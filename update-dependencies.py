from os.path import join
from json import loads
from typing import Union
from urllib.request import urlopen

DEPENDENCIES_PATH = join("bazelrio", "deps.bzl")
WPILIB_VERSION = "2021.3.1"
NI_VERSION = "2020.9.2"
PLATFORMS = ["linuxathena"]

content = open(DEPENDENCIES_PATH, "r").read()
content = content[:content.index("# GENERATED DEPENDENCIES") + len("# GENERATED DEPENDENCIES")]

def http_get(url: str) -> str:
    with urlopen(url) as response:
        return response.read()


def add_wpilib_maven_dependency(project: str):
    global content

    for resource in PLATFORMS + ["headers"]:
        response = http_get(f"https://frcmaven.wpi.edu/api/storage/wpilib-mvn-release/edu/wpi/first/{project}/{project}-cpp/{WPILIB_VERSION}/{project}-cpp-{WPILIB_VERSION}-{resource}.zip")
        shasum = loads(response)["checksums"]["sha256"]
        script = f"""\n    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_{project}_{resource}",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/{project}/{project}-cpp/{WPILIB_VERSION}/{project}-cpp-{WPILIB_VERSION}-{resource}.zip",
        sha256 = "{shasum}",
        build_file_content = {"cc_library_headers" if resource == "headers" else "filegroup_all"},
    )"""
        content += script

def add_ni_library_maven_dependency(project: str):
    global content

    path = f"edu/wpi/first/ni-libraries/{project}/{NI_VERSION}/{project}-{NI_VERSION}-linuxathena.zip"
    response = http_get(f"https://frcmaven.wpi.edu/api/storage/wpilib-mvn-release/{path}")
    shasum = loads(response)["checksums"]["sha256"]
    script = f"""\n    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_{project}_linuxathena",
        url = "https://frcmaven.wpi.edu/artifactory/release/{path}",
        sha256 = "{shasum}",
        build_file_content = filegroup_all,
    )"""
    content += script

add_wpilib_maven_dependency("wpilibc")
add_wpilib_maven_dependency("hal")
add_wpilib_maven_dependency("wpiutil")
add_wpilib_maven_dependency("ntcore")
add_wpilib_maven_dependency("wpimath")
add_ni_library_maven_dependency("chipobject")
add_ni_library_maven_dependency("visa")
add_ni_library_maven_dependency("runtime")
add_ni_library_maven_dependency("netcomm")

with open(DEPENDENCIES_PATH, "w") as dependencies:
    dependencies.write(content)