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
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.5.0/rules_python-0.5.0.tar.gz",
        sha256 = "cd6730ed53a002c56ce4e2f396ba3b3be262fd7cb68339f0377a45e8227fe332",
    )

    setup_toolchains_dependencies(version = toolchain_versions)
    setup_wpilib_dependencies(version = wpilib_version)
    setup_ni_dependencies(version = ni_version)
    setup_sparkmax_dependencies(version = sparkmax_version)
    setup_colorsensor_dependencies(version = colorsensor_version)
    setup_phoenix_dependencies(version = phoenix_version)
    setup_navx_dependencies(version = navx_version)
    setup_opencv_dependencies(version = opencv_version)
