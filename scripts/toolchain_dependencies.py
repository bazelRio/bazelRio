import os
from jinja2 import Template
from deps import _get_hash


class CppPlatformConfig:
    def __init__(self, os, short_os, ext, patch_roborio=True):
        self.os = os
        self.short_os = short_os
        self.ext = ext
        self.patch_roborio = patch_roborio

class JavaPlatformConfig:
    def __init__(self, os, ext):
        self.os = os
        self.ext = ext


class ToolchainConfig:
    def __init__(
        self,
        year,
        toolchain_version,
        release_version,
        jdk_version,
        cpp_url,
        java_url,
        cpp_platform_configs,
        java_platform_configs,
    ):
        self.release_version = release_version
        self.release_version_underscore = release_version.replace("-", "_")
        self.toolchain_version = toolchain_version
        self.year = year

        self.cpp_url = cpp_url
        self.java_url = java_url

        self.jdk_version = jdk_version

        self.cpp_platform_configs = cpp_platform_configs
        self.java_platform_configs = java_platform_configs

    def get_cpp_url(self, platform_config):
        release_version_hyphen = self.release_version.replace("_", "-")
        return self.cpp_url.format(
            ext=platform_config.ext,
            year=self.year,
            platform_config=platform_config,
            toolchain_version=self.toolchain_version,
            release_version_hyphen=release_version_hyphen,
        )

    def get_java_url(self, platform_config):
        jdk_version_escaped = self.jdk_version.replace("+", "%2B")
        jdk_version_underscore = self.jdk_version.replace("+", "_")
        return self.java_url.format(
            jdk_version=self.jdk_version,
            jdk_version_escaped=jdk_version_escaped,
            jdk_version_underscore=jdk_version_underscore,
            platform_config=platform_config,
        )

    def get_java_sha256(self, platform_config):
        url = self.get_java_url(platform_config)
        hash = _get_hash(url, True)
        if hash:
            return f'"{hash}"'

    def get_cpp_sha256(self, platform_config):
        url = self.get_cpp_url(platform_config)
        hash = _get_hash(url, False)
        if hash:
            return f'"{hash}"'


def get_toolchain_dependencies():
    DEFAULT_JAVA_PLATFORMS = [
        JavaPlatformConfig("mac", ".tar.gz"),
        JavaPlatformConfig("linux", ".tar.gz"),
        JavaPlatformConfig("windows", ".zip"),
    ]

    DEFAULT_ARGS = dict(
        toolchain_version = "12.1.0",
        jdk_version = "17.0.4.1+1",
        cpp_url = "https://github.com/wpilibsuite/opensdk/releases/download/v{release_version_hyphen}/cortexa9_vfpv3-roborio-academic-{year}-x86_64-{platform_config.short_os}-Toolchain-{toolchain_version}{platform_config.ext}",
        java_url = "https://github.com/adoptium/temurin17-binaries/releases/download/jdk-{jdk_version_escaped}/OpenJDK17U-jdk_x64_{platform_config.os}_hotspot_{jdk_version_underscore}{platform_config.ext}",
        cpp_platform_configs = [
            CppPlatformConfig("macos", "apple-darwin", ".tgz"),
            CppPlatformConfig("linux", "linux-gnu", ".tgz"),
            CppPlatformConfig("windows", "w64-mingw32", ".zip", patch_roborio=False),
        ],
        java_platform_configs = DEFAULT_JAVA_PLATFORMS
    )

    configs = [
        ToolchainConfig(
            year="2023",
            release_version="2023_7",
            **DEFAULT_ARGS,
        ),
    ]

    return configs


def generate_toolchain_dependencies(dependencies_base, templates_dir):
    configs = get_toolchain_dependencies()

    for config in configs:
        __create_toolchain_config(dependencies_base, templates_dir, config)

    with open(os.path.join(dependencies_base, "toolchains", "deps.bzl"), "w") as f:
        template_contents = open(
            os.path.join(templates_dir, "top_level_toolchain_group.jinja"), "r"
        ).read()
        f.write(Template(template_contents).render(configs=configs))


def __create_toolchain_config(dependencies_base, templates_dir, config):

    toolchain_folder = os.path.join(
        dependencies_base, "toolchains", config.year, config.release_version_underscore
    )

    if not os.path.exists(toolchain_folder):
        os.makedirs(toolchain_folder)

    # Write empty build file for the config
    with open(os.path.join(toolchain_folder, "BUILD"), "w") as build:
        build.write("")

    # Write the downloading dep.bzl
    template_contents = open(
        os.path.join(templates_dir, "toolchain_dep.jinja"), "r"
    ).read()
    build_contents = Template(template_contents).render(config=config)
    with open(os.path.join(toolchain_folder, "deps.bzl"), "w") as build:
        build.write(build_contents)


if __name__ == "__main__":

    SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
    OUTPUT_DIRECTORY_BASE = os.path.join(SCRIPT_DIR, "..")
    DEPENDENCIES_BASE = os.path.join(
        OUTPUT_DIRECTORY_BASE,
        "bazelrio",
        "dependencies",
    )
    generate_toolchain_dependencies(
        DEPENDENCIES_BASE, os.path.join(SCRIPT_DIR, "templates")
    )
