from os.path import join
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

content = open(DEPENDENCIES_PATH, "r").read()
content = content[
    : content.index("# GENERATED DEPENDENCIES") + len("# GENERATED DEPENDENCIES")
]


def http_get(url: str) -> str:
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
):
    global content

    print(f"Adding a dependency on {name} ({resource})")

    if build_file_content is None:
        build_file_content = (
            "cc_library_headers" if resource == "headers" else "filegroup_all"
        )

    url = f"{site}/{resource_path(path, name, language, version, resource)}"

    if sha256 is None:
        try:
            sha256 = http_get(url + ".sha256")
        except:
            print("Downloading this to calculate SHA 256 sum...")
            sha256 = sha256sum(http_get(url)).hexdigest()

    content += f"""
    maybe(
        http_archive,
        "__bazelrio_{path.replace("/", "_")}_{name.lower()}_{resource if resource is not None else language}",
        url = "{url}",
        sha256 = "{sha256}",
        build_file_content = {build_file_content},
    )"""


def wpilib_dependency(project: str, resources=PLATFORMS + ["headers"], language="cpp"):
    for resource in resources:
        sha256 = loads(
            http_get(
                f"https://frcmaven.wpi.edu/api/storage/wpilib-mvn-release/{resource_path('edu/wpi/first', project, language, WPILIB_VERSION, resource)}"
            )
        )["checksums"]["sha256"]

        maven(
            "https://frcmaven.wpi.edu/release",
            "edu/wpi/first",
            project,
            language,
            WPILIB_VERSION,
            resource,
            sha256,
        )


def ni_dependency(project: str, language=None, resources=["linuxathena"]):
    for resource in resources:
        sha256 = loads(
            http_get(
                f"https://frcmaven.wpi.edu/api/storage/wpilib-mvn-release/{resource_path('edu/wpi/first/ni-libraries', project, language, NI_VERSION, resource)}"
            )
        )["checksums"]["sha256"]
        maven(
            "https://frcmaven.wpi.edu/release",
            "edu/wpi/first/ni-libraries",
            project,
            language,
            NI_VERSION,
            resource,
            sha256,
        )


wpilib_dependency("wpilibc")
wpilib_dependency("hal")
wpilib_dependency("wpiutil")
wpilib_dependency("ntcore")
wpilib_dependency("wpimath")
ni_dependency("chipobject")
ni_dependency("visa")
ni_dependency("runtime")
ni_dependency("netcomm")

for resource in PLATFORMS + ["headers"]:
    maven(
        "http://www.revrobotics.com/content/sw/max/sdk/maven",
        "com/revrobotics/frc",
        "SparkMax-cpp",
        None,
        REV_SPARKMAX_VERSION,
        resource,
    )

    maven(
        "http://www.revrobotics.com/content/sw/max/sdk/maven",
        "com/revrobotics/frc",
        "SparkMax-driver",
        None,
        REV_SPARKMAX_VERSION,
        resource,
    )

    maven(
        "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven",
        "com/revrobotics/frc",
        "ColorSensorV3-cpp",
        None,
        REV_COLORSENSOR_VERSION,
        resource,
    )

    maven(
        "https://repo1.maven.org/maven2",
        "com/kauailabs/navx/frc",
        "navx-cpp",
        None,
        KAUAILABS_NAVX_VERSION,
        resource,
    )

for resource in ["headers", "linuxathenastatic"]:
    for project in ["api-cpp", "canutils", "cci", "core", "diagnostics", "wpiapi-cpp"]:
        maven(
            "https://devsite.ctr-electronics.com/maven/release",
            "com/ctre/phoenix",
            project,
            None,
            CTRE_PHOENIX_VERSION,
            resource,
        )

with open(DEPENDENCIES_PATH, "w") as dependencies:
    dependencies.write(content)
