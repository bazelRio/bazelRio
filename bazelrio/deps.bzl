load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

# THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE BELOW THIS LINE!load(//dependencies/wpilib/2021/3/1/:deps.bzl, setup_wpilib_dependencies)
load("//dependencies/wpilib/2021_3_1:deps.bzl", "setup_wpilib_dependencies")
load("//dependencies/ni/2020_9_2:deps.bzl", "setup_ni_dependencies")
load("//dependencies/sparkmax/1_5_4:deps.bzl", "setup_sparkmax_dependencies")
load("//dependencies/colorsensor/1_2_0:deps.bzl", "setup_colorsensor_dependencies")
load("//dependencies/phoenix/5_19_4:deps.bzl", "setup_phoenix_dependencies")
load("//dependencies/navx/4_0_425:deps.bzl", "setup_navx_dependencies")
# THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE ABOVE THIS LINE!

filegroup_all = """filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

def setup_bazelrio_dependencies():
    # Other bazel rules
    maybe(
        http_archive,
        "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.3.0/rules_python-0.3.0.tar.gz",
        sha256 = "934c9ceb552e84577b0faf1e5a2f0450314985b4d8712b2b70717dc679fdc01b",
    )

    # Toolchains
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_macos",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Mac-Toolchain-7.3.0.tar.gz",
        sha256 = "0822ff945ff422b176571cebe7b2dfdc0ef6bf685d3b6f6833db8dc218d992ae",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_linux",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz",
        sha256 = "00cc58bf0607d71e725919d28e22714ce1920692c4864bc86353fc8139cbf7b7",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_windows",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Windows-Toolchain-7.3.0.zip",
        sha256 = "f3e9ba32b63d3cd26e242feeb14e878fecbda86c19c12b98c3084c629e06acb3",
        build_file_content = filegroup_all,
    )

    # THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE BELOW THIS LINE!setup_wpilib_dependencies()
    setup_wpilib_dependencies()
    setup_ni_dependencies()
    setup_sparkmax_dependencies()
    setup_colorsensor_dependencies()
    setup_phoenix_dependencies()
    setup_navx_dependencies()
    # THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE ABOVE THIS LINE!
