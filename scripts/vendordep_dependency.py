import json
import os
from deps import MavenDependencyGroup
import collections

FILE_BLACKLIST = [".DS_Store"]


def vendordep_dependencies(vendor_folder):
    dependencies = collections.defaultdict(list)

    for root, _, files in os.walk(vendor_folder):
        for f in files:

            if f in FILE_BLACKLIST:
                continue

            full_file = os.path.join(root, f)
            vendor_name, maven_dep = vendordep_dependency(full_file)
            dependencies[vendor_name].append(maven_dep)

    return dependencies


def vendordep_dependency(vendor_file):
    PLATFORM_BLACKLIST = set(
        [
            "windowsx86",
            "linuxaarch64bionic",
            "linuxraspbian",
        ]
    )

    with open(vendor_file, "r") as f:
        vendor_dep = json.load(f)

        vendor_name = os.path.basename(os.path.dirname(vendor_file))

        maven_url = vendor_dep["mavenUrls"][0]
        if maven_url.endswith("/"):
            maven_url = maven_url[:-1]
        version = vendor_dep["version"]

        maven_dep = MavenDependencyGroup(
            vendor_name, maven_url, version, fail_on_hash_miss=False
        )

        # Add all the headers and sources first
        for cpp_dep in sorted(
            vendor_dep["cppDependencies"], key=lambda x: x["artifactId"]
        ):
            resources = [cpp_dep['headerClassifier']]
            if 'sourcesClassifier' in cpp_dep:
                resources.append(cpp_dep['sourcesClassifier'])
            maven_dep.add_cpp_dep(
                resources=resources,
                group_id=cpp_dep["groupId"],
                artifact_name=cpp_dep["artifactId"],
            )

        # Then grab the native libraries
        for cpp_dep in sorted(
            vendor_dep["cppDependencies"], key=lambda x: x["artifactId"]
        ):
            resources = []
            for platform in cpp_dep["binaryPlatforms"]:
                if platform not in PLATFORM_BLACKLIST:
                    resources.append(platform)
                    resources.append(platform + "static")

            maven_dep.add_cpp_dep(
                resources=resources,
                group_id=cpp_dep["groupId"],
                artifact_name=cpp_dep["artifactId"],
            )

        for java_dep in sorted(
            vendor_dep["javaDependencies"], key=lambda x: x["artifactId"]
        ):
            maven_dep.add_java_dep(
                group_id=java_dep["groupId"], artifact_name=java_dep["artifactId"]
            )

        return vendor_name, maven_dep
