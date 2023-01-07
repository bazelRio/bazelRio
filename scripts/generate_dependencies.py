import os
import shutil
from jinja2 import Template


SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
OUTPUT_DIRECTORY_BASE = os.path.join(SCRIPT_DIR, "..")
DEPENDENCIES_BASE = os.path.join(
    OUTPUT_DIRECTORY_BASE,
    "bazelrio",
    "dependencies",
)


def clean_old_files():
    dependency_folders = []
    dependency_folders = [
        f
        for f in os.listdir(DEPENDENCIES_BASE)
        if os.path.isdir(os.path.join(DEPENDENCIES_BASE, f))
    ]

    # These are not auto-generated
    dependency_folders.remove("toolchains")
    dependency_folders.remove("scripts")

    for d in dependency_folders:
        print(d)
        shutil.rmtree(os.path.join(DEPENDENCIES_BASE, d))


def get_dependency_folder(maven_dependency):
    folder = os.path.join(
        DEPENDENCIES_BASE,
        maven_dependency.name,
    )

    return folder


def generate_toplevel_dependency(maven_dependencies):
    folder = get_dependency_folder(maven_dependencies[0])
    if not os.path.exists(folder):
        os.makedirs(folder)

    with open(os.path.join(folder, "deps.bzl"), "w") as f:

        template_contents = open(
            os.path.join(SCRIPT_DIR, "templates", "top_level_dep_group.jinja"), "r"
        ).read()
        f.write(
            Template(template_contents).render(maven_dependencies=maven_dependencies)
        )


def generate_single_version_dependency(maven_dependency):
    underscore_version = maven_dependency.version.replace(".", "_").replace("-", "_")
    folder = os.path.join(get_dependency_folder(maven_dependency), underscore_version)

    if not os.path.exists(folder):
        os.makedirs(folder)

    with open(os.path.join(folder, "..", "BUILD"), "w") as build:
        build.write("")

    with open(os.path.join(folder, "BUILD"), "w") as build:
        build.write("")

    template_contents = open(
        os.path.join(SCRIPT_DIR, "templates", "single_dep_group.jinja"), "r"
    ).read()

    build_contents = Template(template_contents).render(
        maven_dependency=maven_dependency
    )

    with open(os.path.join(folder, "deps.bzl"), "w") as build:
        build.write(build_contents)


def generate_dependencies():
    from ni_dependencies import get_ni_dependencies
    from wpilib_dependencies import get_wpilib_dependencies
    from vendordep_dependency import vendordep_dependencies
    from opencv_dependencies import opencv_dependencies
    from libssh_dependencies import libssh_dependencies
    from imgui_dependencies import imgui_dependencies
    from apriltag_dependencies import apriltag_dependencies
    from toolchain_dependencies import generate_toolchain_dependencies

    dependencies = {}
    dependencies.update(get_wpilib_dependencies())
    dependencies.update(get_ni_dependencies())
    dependencies.update(opencv_dependencies())
    dependencies.update(vendordep_dependencies(os.path.join(SCRIPT_DIR, "vendordeps")))
    dependencies.update(libssh_dependencies())
    dependencies.update(imgui_dependencies())
    dependencies.update(apriltag_dependencies())

    # Start fresh by deleting all of the auto generated dependencies
    clean_old_files()

    for maven_dependencies in dependencies.values():
        generate_toplevel_dependency(maven_dependencies)

        for maven_dependency in maven_dependencies:
            generate_single_version_dependency(maven_dependency)

    # Generate toolchains
    generate_toolchain_dependencies(
        DEPENDENCIES_BASE, os.path.join(SCRIPT_DIR, "templates")
    )


if __name__ == "__main__":
    generate_dependencies()
