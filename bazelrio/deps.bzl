load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

filegroup_all = """filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

def setup_bazelrio_dependencies():
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_macos",
        urls = [
            "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Mac-Toolchain-7.3.0.tar.gz",
        ],
        sha256 = "0822ff945ff422b176571cebe7b2dfdc0ef6bf685d3b6f6833db8dc218d992ae",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_linux",
        urls = [
            "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz",
        ],
        sha256 = "00cc58bf0607d71e725919d28e22714ce1920692c4864bc86353fc8139cbf7b7",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_windows",
        urls = [
            "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Windows-Toolchain-7.3.0.zip",
        ],
        sha256 = "f3e9ba32b63d3cd26e242feeb14e878fecbda86c19c12b98c3084c629e06acb3",
        build_file_content = filegroup_all,
    )
