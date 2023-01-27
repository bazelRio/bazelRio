from deps import MavenDependencyGroup
from platforms import default_native_static_platforms


def imgui_dependencies():
    MAVEN_URL = "https://frcmaven.wpi.edu/release"
    VERSIONS = [("frc2023", "1.89.1-1")]
    DEP_NAME = "imgui"

    dependencies = {DEP_NAME: []}

    for subpackage, version in VERSIONS:
        maven_dep = MavenDependencyGroup(DEP_NAME, MAVEN_URL, version)
        dependencies[DEP_NAME].append(maven_dep)

        maven_dep.add_cpp_dep(
            resources=default_native_static_platforms() + ["headers"],
            group_id=f"edu.wpi.first.thirdparty.{subpackage}",
            artifact_name="imgui",
        )
        
    return dependencies
