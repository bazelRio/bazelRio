import os
import tempfile
import hashlib
from urllib.request import urlopen

CACHE_DIRECTORY = os.path.join(tempfile.gettempdir(), "bazelrio_cache")


def _get_hash(url, fail_on_miss=False):
    cached_file = os.path.join(CACHE_DIRECTORY, os.path.basename(url) + ".sha256")

    if not os.path.exists(cached_file):

        if not os.path.exists(CACHE_DIRECTORY):
            os.mkdir(CACHE_DIRECTORY)

        print(f"Cache miss for {url}")
        try:
            url_result = urlopen(url)
            if url_result.getcode() != 200:
                raise Exception(f"Could not grab '{url}'")
            data = url_result.read()
            sha256 = hashlib.sha256(data).hexdigest()
            with open(cached_file, "wb") as f:
                f.write(data)

            return sha256
        except:
            if fail_on_miss:
                raise
            return None
    else:
        with open(cached_file, "rb") as f:
            data = f.read()
        return hashlib.sha256(data).hexdigest()


class BaseDependency:
    def __init__(self, maven_url, group_id, artifact_name, version):
        self.maven_url = maven_url
        self.group_id = group_id
        self.artifact_name = artifact_name
        self.version = version

    def get_archive_name(self, suffix=""):
        group_underscore = self.group_id.replace(".", "_").lower()
        archive_name = f"__bazelrio_{group_underscore}_{self.artifact_name.lower()}"
        if suffix:
            archive_name += f"_{suffix}"

        return archive_name

    def _get_url(self, file_extension, suffix):
        group_as_folder = self.group_id.replace(".", "/").lower()
        url = f"{self.maven_url}/{group_as_folder}/{self.artifact_name}/{self.version}/{self.artifact_name}-{self.version}"
        if suffix:
            url += f"-{suffix}"
        url += f"{file_extension}"

        return url


class CppDependency(BaseDependency):
    def __init__(self, resources, suffix="", **kwargs):
        BaseDependency.__init__(self, **kwargs)
        self.resources = resources
        self.suffix = suffix

    def get_url(self, resource):
        return self._get_url(".zip", resource)

    def get_sha256(self, resource):
        return _get_hash(self.get_url(resource))

    def get_build_file_content(self, resource):
        if resource == "headers":
            return "cc_library_headers"
        elif "static" not in resource:
            return "cc_library_shared"
        else:
            return "cc_library_static"


class JavaDependency(BaseDependency):
    def get_url(self):
        return self._get_url(".jar", "")

    def get_sha256(self):
        return _get_hash(self.get_url())


class MavenDependencyGroup:
    def __init__(self, name, maven_url, version):
        self.version = version
        self.name = name
        self.maven_url = maven_url
        self._cpp_deps = []
        self._java_deps = []

        self.underscore_version = version.replace(".", "_").replace("-", "_")

    def add_cpp_dep(self, group_id, artifact_name, resources):
        self._cpp_deps.append(
            CppDependency(
                resources=resources,
                group_id=group_id,
                artifact_name=artifact_name,
                maven_url=self.maven_url,
                version=self.version,
            )
        )

    def add_java_dep(self, group_id, artifact_name):
        self._java_deps.append(
            JavaDependency(
                group_id=group_id,
                artifact_name=artifact_name,
                maven_url=self.maven_url,
                version=self.version,
            )
        )
