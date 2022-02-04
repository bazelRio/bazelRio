from deps import MavenDependencyGroup
from platforms import default_all_platforms, default_native_shared_platforms


def _cpp_dependency(maven_dep, artifact_name):
    group_id = "edu.wpi.first." + artifact_name
    maven_dep.add_cpp_dep(
        artifact_name=artifact_name + "-cpp",
        group_id=group_id,
        resources=default_all_platforms() + ["headers", "sources"],
    )


def _java_dependency(maven_dep, artifact_name):
    group_id = "edu.wpi.first." + artifact_name
    maven_dep.add_java_dep(artifact_name=artifact_name + "-java", group_id=group_id)


def _halsim_dependency(maven_dep, artifact_name):
    group_id = "edu.wpi.first.halsim"
    maven_dep.add_cpp_dep(
        artifact_name=artifact_name,
        group_id=group_id,
        resources=default_native_shared_platforms(),
    )


def _java_tool(maven_dep, artifact_name, group_id="edu.wpi.first.tools", native_platforms=["linux64", "mac64", "win64"]):
    if native_platforms:
        maven_dep.add_java_native_tool(artifact_name=artifact_name, group_id=group_id, resources=native_platforms)
    else:
        pass

def _executable_tool(maven_dep, artifact_name, group_id="edu.wpi.first.tools"):
    native_platforms = default_native_shared_platforms()

    maven_dep.add_executable_tool(
        artifact_name=artifact_name,
        group_id=group_id,
        resources=native_platforms,
    )


def get_wpilib_dependencies():

    MAVEN_URL = "https://frcmaven.wpi.edu/release"
    VERSIONS = ["2021.3.1", "2022.1.1-beta-1", "2022.1.1-beta-2", "2022.1.1", "2022.2.1", "2022.3.1"]
    DEP_NAME = "wpilib"

    dependencies = {DEP_NAME: []}

    dual_language = [
        "hal",
        "wpiutil",
        "ntcore",
        "wpimath",
        "cameraserver",
        "cscore",
        "wpilibOldCommands",
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

        maven_dep.add_java_dep(
            artifact_name="api", group_id="edu.wpi.first.shuffleboard"
        )

        _cpp_dependency(maven_dep, "wpilibc")
        _java_dependency(maven_dep, "wpilibj")

        for artifact in dual_language:
            _cpp_dependency(maven_dep, artifact)
            _java_dependency(maven_dep, artifact)

        for artifact in halsim_deps:
            _halsim_dependency(maven_dep, artifact)

        _executable_tool(maven_dep, "Glass")
        _java_tool(maven_dep, "SmartDashboard")
        _java_tool(maven_dep, "PathWeaver")
        _java_tool(maven_dep, "RobotBuilder", native_platforms=[""])
        _java_tool(maven_dep, "shuffleboard", group_id="edu.wpi.first.shuffleboard")

        if "2021" in version:
            _java_tool(maven_dep, "OutlineViewer")
        elif "2022" in version:
            _executable_tool(maven_dep, "OutlineViewer")
            _executable_tool(maven_dep, "SysId")
        else:
            raise Exception(f"Unknown year {version}")

    return dependencies
