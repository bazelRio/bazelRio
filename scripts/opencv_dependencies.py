from deps import MavenDependencyGroup
from platforms import default_all_platforms


def opencv_dependencies():
    MAVEN_URL = "https://frcmaven.wpi.edu/release"
    VERSIONS = [("frc2023", "4.6.0-3")]
    DEP_NAME = "opencv"

    dependencies = {DEP_NAME: []}

    for subpackage, version in VERSIONS:
        maven_dep = MavenDependencyGroup(DEP_NAME, MAVEN_URL, version)
        dependencies[DEP_NAME].append(maven_dep)

        maven_dep.add_cpp_dep(
            resources=default_all_platforms() + ["headers"],
            group_id=f"edu.wpi.first.thirdparty.{subpackage}.opencv",
            artifact_name="opencv-cpp",
        )
        
        maven_dep.add_java_dep(
            group_id=f"edu.wpi.first.thirdparty.{subpackage}.opencv",
            artifact_name="opencv-java",
        )
    return dependencies
