from os import makedirs
from os.path import join, exists
from json import loads
from typing import Union
from urllib.request import urlopen
from urllib.error import HTTPError
from hashlib import sha256 as sha256sum
import os
import json

SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
OUTPUT_DIRECTORY_BASE = os.path.join(SCRIPT_DIR, "..")

DEPENDENCIES_PATH = join(OUTPUT_DIRECTORY_BASE, "bazelrio", "deps.bzl")
WPILIB_VERSION = "2021.3.1"
NI_VERSION = "2020.9.2"
REV_SPARKMAX_VERSION = "1.5.4"
REV_COLORSENSOR_VERSION = "1.2.0"
CTRE_PHOENIX_VERSION = "5.19.4"
KAUAILABS_NAVX_VERSION = "4.0.425"

DEFAULT_NATIVE_SHARED_PLATFORMS = ["windowsx86-64", "linuxx86-64", "osxx86-64"]
DEFAULT_NATIVE_STATIC_PLATFORMS = [
    "windowsx86-64static",
    "linuxx86-64static",
    "osxx86-64static",
]
DEFAULT_PLATFORMS = (
    ["linuxathena", "linuxathenastatic"]
    + DEFAULT_NATIVE_SHARED_PLATFORMS
    + DEFAULT_NATIVE_STATIC_PLATFORMS
)


def http_get(url: str) -> bytes:
    with urlopen(url) as response:
        return response.read()


def resource_path(
    path: str,
    name: str,
    language: Union[str, None],
    version: str,
    resource: Union[str, None] = None,
):
    if language is not None:
        return f"""{path}/{name}/{name}-{language}/{version}/{name}-{language}-{version}{f"-{resource}" if resource is not None else ""}.zip"""

    return f"""{path}/{name}/{version}/{name}-{version}{f"-{resource}" if resource is not None else ""}.zip"""


def maven(
    site: str,
    path: str,
    name: str,
    language: Union[str, None],
    version: str,
    resource: Union[str, None] = None,
    sha256: Union[str, None] = None,
    build_file_content: Union[str, None] = None,
) -> str:
    print(f"Adding a dependency on {name} ({resource})")

    if build_file_content is None:
        if resource == "headers":
            build_file_content = "cc_library_headers"
        elif resource.endswith("static"):
            build_file_content = "cc_library_static"
        else:
            build_file_content = "cc_library_shared"

    url = f"{site}/{resource_path(path, name, language, version, resource)}"

    if sha256 is None:
        try:
            sha256 = http_get(url + ".sha256").decode("utf-8")
        except HTTPError:
            print("Downloading this to calculate SHA 256 sum...")
            sha256 = sha256sum(http_get(url)).hexdigest()

    return f"""
    maybe(
        http_archive,
        "__bazelrio_{path.replace("/", "_")}_{name.lower()}_{resource if resource is not None else language}",
        url = "{url}",
        sha256 = "{sha256}",
        build_file_content = {build_file_content},
    )"""


def wpilib_dependency(
    project: str,
    resources=DEFAULT_PLATFORMS + ["headers"],
    version=WPILIB_VERSION,
    language="cpp",
    path="edu/wpi/first",
) -> str:
    dependencies = ""
    for resource in resources:
        sha256 = loads(
            http_get(
                f"https://frcmaven.wpi.edu/api/storage/wpilib-mvn-release/{resource_path(path, project, language, version, resource)}"
            )
        )["checksums"]["sha256"]

        dependencies += maven(
            "https://frcmaven.wpi.edu/release",
            path,
            project,
            language,
            version,
            resource,
            sha256,
        )

    return dependencies


def halsim_dependency(project: str) -> str:
    return wpilib_dependency(
        project,
        path="edu/wpi/first/halsim",
        resources=DEFAULT_NATIVE_SHARED_PLATFORMS,
        language=None,
    )


def ni_dependency(project: str, language=None, resources=["linuxathena"]) -> str:
    dependencies = ""
    for resource in resources:
        sha256 = loads(
            http_get(
                f"https://frcmaven.wpi.edu/api/storage/wpilib-mvn-release/{resource_path('edu/wpi/first/ni-libraries', project, language, NI_VERSION, resource)}"
            )
        )["checksums"]["sha256"]
        dependencies += maven(
            "https://frcmaven.wpi.edu/release",
            "edu/wpi/first/ni-libraries",
            project,
            language,
            NI_VERSION,
            resource,
            sha256,
        )

    return dependencies


def parse_vendor_dep(dependency_name, vendor_dep_file):
    PLATFORM_BLACKLIST = set(
        [
            "windowsx86",
            "linuxaarch64bionic",
            "linuxraspbian",
        ]
    )

    with open(vendor_dep_file, "r") as f:
        vendor_dep = json.load(f)

    header_dependencies = ""
    library_dependencies = ""

    for cpp_dep in sorted(vendor_dep["cppDependencies"], key=lambda x: x["artifactId"]):
        site = vendor_dep["mavenUrls"][0]
        if site.endswith("/"):
            site = site[:-1]

        common_args = {}
        common_args["site"] = site
        common_args["path"] = cpp_dep["groupId"].replace(".", "/")
        common_args["name"] = cpp_dep["artifactId"]
        common_args["language"] = None
        common_args["version"] = vendor_dep["version"]

        # Header
        header_dependencies += maven(
            resource=cpp_dep["headerClassifier"],
            **common_args,
        )

        # Libraries
        for platform in cpp_dep["binaryPlatforms"]:
            if platform in PLATFORM_BLACKLIST:
                continue

            # The vendors aren't good at making vendordeps.json. They often
            # include bogus data, and aren't consistent about publishing
            # what they are supposed to, so give it a best effort and fail
            # quietly.
            try:
                library_dependencies += maven(
                    resource=platform,
                    **common_args,
                )
            except HTTPError:
                print(f"No shared library for {cpp_dep['artifactId']}")

            try:
                library_dependencies += maven(
                    resource=platform + "static",
                    **common_args,
                )
            except HTTPError:
                print(f"No static library for {cpp_dep['artifactId']}")

    return create_dependency(
        dependency_name,
        vendor_dep["version"],
        header_dependencies + library_dependencies,
    )


def create_dependency(project: str, version: str, dependencies: str):
    folder = join(
        OUTPUT_DIRECTORY_BASE,
        "bazelrio",
        "dependencies",
        project,
        version.replace(".", "_"),
    )
    if not exists(folder):
        makedirs(folder)

    with open(join(folder, "..", "BUILD"), "w") as build:
        build.write("")

    with open(join(folder, "BUILD"), "w") as build:
        build.write("")

    method_name = f"setup_{project}_dependencies"

    with open(join(folder, "deps.bzl"), "w") as build:
        build.write(
            f"""load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static", "cc_library_shared", "filegroup_all")

def {method_name}():"""
            + dependencies
            + "\n"
        )

    return (
        f'load("//dependencies/{project}/{version.replace(".", "_")}:deps.bzl", "{method_name}")',
        method_name,
    )


def main():
    dependencies = []

    dependencies.append(
        create_dependency(
            "wpilib",
            WPILIB_VERSION,
            wpilib_dependency("wpilibc")
            + wpilib_dependency("hal")
            + wpilib_dependency("wpiutil")
            + wpilib_dependency("ntcore")
            + wpilib_dependency("wpimath")
            + wpilib_dependency("cameraserver")
            + wpilib_dependency("cscore")
            + wpilib_dependency("wpilibNewCommands")
            + wpilib_dependency(
                "opencv", path="edu/wpi/first/thirdparty/frc2021", version="3.4.7-5"
            )
            + halsim_dependency("halsim_ds_socket")
            + halsim_dependency("halsim_gui")
            + halsim_dependency("halsim_ws_client")
            + halsim_dependency("halsim_ws_server"),
        )
    )
    dependencies.append(
        create_dependency(
            "ni",
            NI_VERSION,
            ni_dependency("chipobject")
            + ni_dependency("visa")
            + ni_dependency("runtime")
            + ni_dependency("netcomm"),
        )
    )

    dependencies.append(
        parse_vendor_dep(
            "sparkmax", f"{SCRIPT_DIR}/vendordeps/sparkmax/{REV_SPARKMAX_VERSION}.json"
        )
    )
    dependencies.append(
        parse_vendor_dep(
            "colorsensor",
            f"{SCRIPT_DIR}/vendordeps/colorsensor/{REV_COLORSENSOR_VERSION}.json",
        )
    )
    dependencies.append(
        parse_vendor_dep(
            "phoenix", f"{SCRIPT_DIR}/vendordeps/phoenix/{CTRE_PHOENIX_VERSION}.json"
        )
    )
    dependencies.append(
        parse_vendor_dep(
            "navx", f"{SCRIPT_DIR}/vendordeps/navx/{KAUAILABS_NAVX_VERSION}.json"
        )
    )

    main_dep_file = join(OUTPUT_DIRECTORY_BASE, "bazelrio", "deps.bzl")
    contents = open(main_dep_file, "r").read().split("# THE FOLLOWING LINES")

    contents[1] = contents[1].split("\n")[0]
    contents[3] = contents[3].split("\n")[0]

    contents[1] += (
        "\n" + "\n".join(map(lambda dependency: dependency[0], dependencies)) + "\n"
    )
    contents[3] += "\n    " + (
        "\n    ".join(map(lambda dependency: dependency[1] + "()", dependencies))
        + "\n    "
    )

    with open(main_dep_file, "w") as deps:
        deps.write("# THE FOLLOWING LINES".join(contents))


if __name__ == "__main__":
    main()
