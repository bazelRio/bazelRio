from os import makedirs
from os.path import join, exists
from json import loads
from typing import Union
from urllib.request import urlopen
from hashlib import sha256 as sha256sum

DEPENDENCIES_PATH = join("bazelrio", "deps.bzl")
WPILIB_VERSION = "2021.3.1"
NI_VERSION = "2020.9.2"
REV_SPARKMAX_VERSION = "1.5.4"
REV_COLORSENSOR_VERSION = "1.2.0"
CTRE_PHOENIX_VERSION = "5.19.4"
KAUAILABS_NAVX_VERSION = "4.0.425"

PLATFORMS = ["linuxathena"]


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
        build_file_content = (
            "cc_library_headers" if resource == "headers" else "filegroup_all"
        )

    url = f"{site}/{resource_path(path, name, language, version, resource)}"

    if sha256 is None:
        try:
            sha256 = http_get(url + ".sha256").decode("utf-8")
        except:
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
    project: str, resources=PLATFORMS + ["headers"], language="cpp"
) -> str:
    dependencies = ""
    for resource in resources:
        sha256 = loads(
            http_get(
                f"https://frcmaven.wpi.edu/api/storage/wpilib-mvn-release/{resource_path('edu/wpi/first', project, language, WPILIB_VERSION, resource)}"
            )
        )["checksums"]["sha256"]

        dependencies += maven(
            "https://frcmaven.wpi.edu/release",
            "edu/wpi/first",
            project,
            language,
            WPILIB_VERSION,
            resource,
            sha256,
        )

    return dependencies


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


def create_dependency(project: str, version: str, dependencies: str):
    folder = join("bazelrio", "dependencies", project, version.replace(".", "_"))
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
filegroup_all = \"""filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
\"""

cc_library_headers = \"""cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
\"""

def {method_name}():"""
            + dependencies
        )

    return (
        f'load("//dependencies/{project}/{version.replace(".", "_")}:deps.bzl", "{method_name}")',
        method_name,
    )


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
        + wpilib_dependency("wpilibNewCommands"),
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

sparkmax_dependencies = ""
colorsensor_dependencies = ""
phoenix_dependencies = ""
navx_dependencies = ""

for resource in PLATFORMS + ["headers"]:
    sparkmax_dependencies += maven(
        "http://www.revrobotics.com/content/sw/max/sdk/maven",
        "com/revrobotics/frc",
        "SparkMax-cpp",
        None,
        REV_SPARKMAX_VERSION,
        resource,
    )

    sparkmax_dependencies += maven(
        "http://www.revrobotics.com/content/sw/max/sdk/maven",
        "com/revrobotics/frc",
        "SparkMax-driver",
        None,
        REV_SPARKMAX_VERSION,
        resource,
    )

    colorsensor_dependencies += maven(
        "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven",
        "com/revrobotics/frc",
        "ColorSensorV3-cpp",
        None,
        REV_COLORSENSOR_VERSION,
        resource,
    )

    navx_dependencies += maven(
        "https://repo1.maven.org/maven2",
        "com/kauailabs/navx/frc",
        "navx-cpp",
        None,
        KAUAILABS_NAVX_VERSION,
        resource,
    )

for resource in ["headers", "linuxathenastatic"]:
    for project in ["api-cpp", "canutils", "cci", "core", "diagnostics", "wpiapi-cpp"]:
        phoenix_dependencies += maven(
            "https://devsite.ctr-electronics.com/maven/release",
            "com/ctre/phoenix",
            project,
            None,
            CTRE_PHOENIX_VERSION,
            resource,
        )

dependencies.append(
    create_dependency("sparkmax", REV_SPARKMAX_VERSION, sparkmax_dependencies)
)
dependencies.append(
    create_dependency("colorsensor", REV_COLORSENSOR_VERSION, colorsensor_dependencies)
)
dependencies.append(
    create_dependency("phoenix", CTRE_PHOENIX_VERSION, phoenix_dependencies)
)
dependencies.append(
    create_dependency("navx", KAUAILABS_NAVX_VERSION, navx_dependencies)
)

contents = open(join("bazelrio", "deps.bzl"), "r").read().split("# THE FOLLOWING LINES")

contents[1] = contents[1].split("\n")[0]
contents[3] = contents[3].split("\n")[0]

contents[1] += (
    "\n" + "\n".join(map(lambda dependency: dependency[0], dependencies)) + "\n"
)
contents[3] += "\n    " + (
    "\n    ".join(map(lambda dependency: dependency[1] + "()", dependencies)) + "\n    "
)

with open(join("bazelrio", "deps.bzl"), "w") as deps:
    deps.write("# THE FOLLOWING LINES".join(contents))
