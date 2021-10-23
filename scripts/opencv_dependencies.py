from deps import MavenDependencyGroup
from platforms import default_all_platforms


def opencv_dependencies():
    MAVEN_URL = "https://frcmaven.wpi.edu/release"
    VERSIONS = ["3.4.7-5"]
    DEP_NAME = "opencv"

    dependencies = {DEP_NAME: []}

    for version in VERSIONS:
        maven_dep = MavenDependencyGroup(DEP_NAME, MAVEN_URL, version)
        dependencies[DEP_NAME].append(maven_dep)

        maven_dep.add_cpp_dep(
            resources=default_all_platforms() + ["headers"],
            group_id="edu.wpi.first.thirdparty.frc2021.opencv",
            artifact_name="opencv-cpp",
        )
    return dependencies
