load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//dependencies/toolchains:deps.bzl", "setup_toolchains_dependencies")
load("//dependencies/wpilib:deps.bzl", "setup_wpilib_dependencies")
load("//dependencies/ni:deps.bzl", "setup_ni_dependencies")
load("//dependencies/sparkmax:deps.bzl", "setup_sparkmax_dependencies")
load("//dependencies/colorsensor:deps.bzl", "setup_colorsensor_dependencies")
load("//dependencies/phoenix:deps.bzl", "setup_phoenix_dependencies")
load("//dependencies/navx:deps.bzl", "setup_navx_dependencies")
load("//dependencies/opencv:deps.bzl", "setup_opencv_dependencies")

def setup_bazelrio_dependencies(
        toolchain_versions = "2021",
        wpilib_version = "2021.3.1",
        ni_version = "2020.9.2",
        opencv_version = "3.4.7-5",
        sparkmax_version = "1.5.4",
        colorsensor_version = "1.2.0",
        phoenix_version = "5.19.4",
        navx_version = "4.0.425"):
    # Other bazel rules
    maybe(
        http_archive,
        "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.3.0/rules_python-0.3.0.tar.gz",
        sha256 = "934c9ceb552e84577b0faf1e5a2f0450314985b4d8712b2b70717dc679fdc01b",
    )

    setup_toolchains_dependencies(version = toolchain_versions)
    setup_wpilib_dependencies(version = wpilib_version)
    setup_ni_dependencies(version = ni_version)
    setup_sparkmax_dependencies(version = sparkmax_version)
    setup_colorsensor_dependencies(version = colorsensor_version)
    setup_phoenix_dependencies(version = phoenix_version)
    setup_navx_dependencies(version = navx_version)
    setup_opencv_dependencies(version = opencv_version)
