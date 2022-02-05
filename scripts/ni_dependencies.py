from deps import MavenDependencyGroup

MAVEN_URL = "https://frcmaven.wpi.edu/release"


def _cpp_dependency(maven_dep, artifact_name):
    maven_dep.add_cpp_dep(
        artifact_name=artifact_name,
        group_id="edu.wpi.first.ni-libraries",
        resources=["linuxathena"],
    )


def get_ni_dependencies():

    MAVEN_URL = "https://frcmaven.wpi.edu/release"
    VERSIONS = ["2020.9.2", "2022.2.2", "2022.2.3", "2022.4.0"]
    DEP_NAME = "ni"

    dependencies = {DEP_NAME: []}

    for version in VERSIONS:
        maven_dep = MavenDependencyGroup(DEP_NAME, MAVEN_URL, version)
        dependencies[DEP_NAME].append(maven_dep)

        _cpp_dependency(maven_dep, "chipobject")
        _cpp_dependency(maven_dep, "visa")
        _cpp_dependency(maven_dep, "runtime")
        _cpp_dependency(maven_dep, "netcomm")

    return dependencies
