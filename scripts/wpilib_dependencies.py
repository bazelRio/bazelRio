from deps import *


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


def _cpp_dependency(maven_dep, artifact_name):
    group_id = "edu.wpi.first." + artifact_name
    maven_dep.add_cpp_dep(
        artifact_name=artifact_name + "-cpp",
        group_id=group_id,
        resources=DEFAULT_PLATFORMS + ["headers"],
    )


def _java_dependency(maven_dep, artifact_name):
    group_id = "edu.wpi.first." + artifact_name
    maven_dep.add_java_dep(artifact_name=artifact_name + "-java", group_id=group_id)


def _halsim_dependency(maven_dep, artifact_name):
    group_id = "edu.wpi.first.halsim"
    maven_dep.add_cpp_dep(
        artifact_name=artifact_name,
        group_id=group_id,
        resources=DEFAULT_NATIVE_SHARED_PLATFORMS,
    )


def get_wpilib_dependencies():

    MAVEN_URL = "https://frcmaven.wpi.edu/release"
    VERSIONS = ["2021.3.1"]
    DEP_NAME = "wpilib"

    dependencies = {DEP_NAME: []}

    dual_language = [
        "hal",
        "wpiutil",
        "ntcore",
        "wpimath",
        "cameraserver",
        "cscore",
        "wpilibNewCommands",
    ]
    halsim_deps = [
        "halsim_ds_socket",
        "halsim_gui",
        "halsim_ws_client",
        "halsim_ws_server",
    ]

    for version in VERSIONS:
        maven_dep = MavenDependencyGroup(DEP_NAME, MAVEN_URL, version)
        dependencies[DEP_NAME].append(maven_dep)

        _cpp_dependency(maven_dep, "wpilibc")
        _java_dependency(maven_dep, "wpilibj")

        for artifact in dual_language:
            _cpp_dependency(maven_dep, artifact)
            _java_dependency(maven_dep, artifact)

        # TODO move to own folder
        maven_dep._cpp_deps.append(
            CppDependency(
                resources=DEFAULT_PLATFORMS + ["headers"],
                group_id="edu.wpi.first.thirdparty.frc2021.opencv",
                artifact_name="opencv-cpp",
                maven_url=maven_dep.maven_url,
                version="3.4.7-5",
            )
        )

        for artifact in halsim_deps:
            _halsim_dependency(maven_dep, artifact)

    return dependencies
