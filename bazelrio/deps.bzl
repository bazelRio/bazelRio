load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("//dependencies/toolchains:deps.bzl", "setup_toolchains_dependencies")
load("//dependencies/wpilib:deps.bzl", "setup_wpilib_dependencies")
load("//dependencies/ni:deps.bzl", "setup_ni_dependencies")
load("//dependencies/sparkmax:deps.bzl", "setup_sparkmax_dependencies")
load("//dependencies/colorsensor:deps.bzl", "setup_colorsensor_dependencies")
load("//dependencies/revlib:deps.bzl", "setup_revlib_dependencies")
load("//dependencies/phoenix:deps.bzl", "setup_phoenix_dependencies")
load("//dependencies/navx:deps.bzl", "setup_navx_dependencies")
load("//dependencies/opencv:deps.bzl", "setup_opencv_dependencies")

RULES_JVM_EXTERNAL_TAG = "4.2"
RULES_JVM_EXTERNAL_SHA = "cd1a77b7b02e8e008439ca76fd34f5b07aecb8c752961f9640dea15e9e5ba1ca"

def setup_bazelrio_dependencies(
        toolchain_versions = "2022-1",
        wpilib_version = "2022.3.1",
        ni_version = "2022.4.0",
        opencv_version = "4.5.2-1",
        sparkmax_version = "1.5.4",
        colorsensor_version = "1.2.0",
        revlib_version = "2022.1.1",
        phoenix_version = "5.20.2",
        navx_version = "4.0.442"):
    # Other bazel rules
    maybe(
        http_archive,
        name = "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.5.0/rules_python-0.5.0.tar.gz",
        sha256 = "cd6730ed53a002c56ce4e2f396ba3b3be262fd7cb68339f0377a45e8227fe332",
    )
    maybe(
        http_archive,
        name = "rules_jvm_external",
        url = "https://github.com/bazelbuild/rules_jvm_external/archive/%s.zip" % RULES_JVM_EXTERNAL_TAG,
        sha256 = RULES_JVM_EXTERNAL_SHA,
        strip_prefix = "rules_jvm_external-%s" % RULES_JVM_EXTERNAL_TAG,
    )

    setup_toolchains_dependencies(version = toolchain_versions)
    setup_wpilib_dependencies(version = wpilib_version)
    setup_ni_dependencies(version = ni_version)
    setup_sparkmax_dependencies(version = sparkmax_version)
    setup_colorsensor_dependencies(version = colorsensor_version)
    setup_revlib_dependencies(version = revlib_version)
    setup_phoenix_dependencies(version = phoenix_version)
    setup_navx_dependencies(version = navx_version)
    setup_opencv_dependencies(version = opencv_version)
