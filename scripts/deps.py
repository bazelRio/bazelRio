import os
import re
import tempfile
import hashlib
from urllib.request import urlopen

CACHE_DIRECTORY = os.path.join(tempfile.gettempdir(), "bazelrio_cache")


def _download_and_cache(cached_file, url, fail_on_miss):
    if not os.path.exists(CACHE_DIRECTORY):
        os.mkdir(CACHE_DIRECTORY)

    print(f"Cache miss for {url}")
    try:
        url_result = urlopen(url)
    except:
        if fail_on_miss:
            raise
        return None

    if url_result.getcode() != 200:
        raise Exception(f"Could not grab '{url}'")

    data = url_result.read()

    # CTRE does a fake 404 page, that makes it seem like a valid 200 response. Treat this like a 404
    if b"html>" in data:
        message = f"Looks like a fake 404 happened for '{url}'"
        if fail_on_miss:
            raise Exception(message)
        print("  " + message)
        data = b""  # Cache an empty file, so we don't try to download it everytime
        sha256 = None
    else:
        sha256 = hashlib.sha256(data).hexdigest()

    with open(cached_file + ".raw", "wb") as f:
        f.write(data or "None")

    with open(cached_file, "w") as f:
        f.write(sha256)

    return sha256


def _get_hash(url, fail_on_miss):
    cached_file = os.path.join(CACHE_DIRECTORY, os.path.basename(url) + ".sha256")
    if not os.path.exists(cached_file):
        return _download_and_cache(cached_file, url, fail_on_miss)

    with open(cached_file, "r") as f:
        data = f.read()
        return data


class BaseDependency:
    def __init__(self, maven_url, group_id, artifact_name, version, fail_on_hash_miss):
        self.maven_url = maven_url
        self.group_id = group_id
        self.artifact_name = artifact_name
        self.version = version
        self.fail_on_hash_miss = fail_on_hash_miss

    def get_archive_name(self, suffix=""):
        group_underscore = self.group_id.replace(".", "_").lower()

        # Having a year in the bazel name makes things tricky downstream. Remove it.
        year_search = re.findall("20[0-9]{2}", group_underscore)
        if year_search:
            group_underscore = group_underscore.replace(year_search[0], "")

        archive_name = f"__bazelrio_{group_underscore}_{self.artifact_name.lower()}"
        if suffix:
            archive_name += f"_{suffix}"

        return archive_name

    def _get_url(self, file_extension, suffix):
        group_as_folder = self.group_id.replace(".", "/")
        url = f"{self.maven_url}/{group_as_folder}/{self.artifact_name}/{self.version}/{self.artifact_name}-{self.version}"
        if suffix:
            url += f"-{suffix}"
        url += f"{file_extension}"

        return url


class MultiResourceDependency(BaseDependency):
    def __init__(self, file_extension, resources, suffix="", **kwargs):
        BaseDependency.__init__(self, **kwargs)
        self.resources = resources
        self.suffix = suffix
        self.file_extension = file_extension

    def get_url(self, resource):
        return self._get_url(self.file_extension, resource)

    def get_sha256(self, resource):
        return _get_hash(self.get_url(resource), self.fail_on_hash_miss)


class CppDependency(MultiResourceDependency):
    def __init__(self, **kwargs):
        MultiResourceDependency.__init__(self, file_extension = ".zip", **kwargs)

    def get_build_file_content(self, resource):
        if resource == "headers":
            return "cc_library_headers"
        elif resource == "sources":
            return "cc_library_sources"
        elif "static" not in resource:
            return "cc_library_shared"
        else:
            return "cc_library_static"


class JavaNativeToolDependency(MultiResourceDependency):
    def __init__(self, **kwargs):
        MultiResourceDependency.__init__(self, file_extension = ".jar", **kwargs)

class ExecutableToolDependency(MultiResourceDependency):
    def __init__(self, **kwargs):
        MultiResourceDependency.__init__(self, file_extension = ".zip", **kwargs)

class JavaDependency(BaseDependency):
    def get_url(self):
        return self._get_url(".jar", "")

    def get_sha256(self):
        return _get_hash(self.get_url(), self.fail_on_hash_miss)


class MavenDependencyGroup:
    def __init__(self, name, maven_url, version, fail_on_hash_miss=True):
        self.version = version
        self.name = name
        self.maven_url = maven_url
        self._cpp_deps = []
        self._java_deps = []
        self._java_native_tools = []
        self._executable_tools = []
        self.fail_on_hash_miss = fail_on_hash_miss

        self.underscore_version = version.replace(".", "_").replace("-", "_")

    def add_cpp_dep(self, group_id, artifact_name, resources, version=None):
        if version is None:
            version = self.version
        self._cpp_deps.append(
            CppDependency(
                resources=resources,
                group_id=group_id,
                artifact_name=artifact_name,
                maven_url=self.maven_url,
                version=version,
                fail_on_hash_miss=self.fail_on_hash_miss,
            )
        )

    def add_java_dep(self, group_id, artifact_name, version=None):
        if version is None:
            version = self.version
        self._java_deps.append(
            JavaDependency(
                group_id=group_id,
                artifact_name=artifact_name,
                maven_url=self.maven_url,
                version=version,
                fail_on_hash_miss=self.fail_on_hash_miss,
            )
        )

    def add_java_native_tool(self, group_id, artifact_name, resources):
        self._java_native_tools.append(
            JavaNativeToolDependency(
                group_id=group_id,
                artifact_name=artifact_name,
                resources=resources,
                maven_url=self.maven_url,
                version=self.version,
                fail_on_hash_miss=self.fail_on_hash_miss,
            )
        )

    def add_executable_tool(self, group_id, artifact_name, resources):
        self._executable_tools.append(
            ExecutableToolDependency(
                group_id=group_id,
                artifact_name=artifact_name,
                resources=resources,
                maven_url=self.maven_url,
                version=self.version,
                fail_on_hash_miss=self.fail_on_hash_miss,
            )
        )
