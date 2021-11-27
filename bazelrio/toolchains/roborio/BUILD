load(":toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "roborio_toolchain_config_macos",
    host_os = "macos",
)

cc_toolchain_config(
    name = "roborio_toolchain_config_linux",
    host_os = "linux",
)

cc_toolchain_config(
    name = "roborio_toolchain_config_windows",
    host_os = "windows",
    script_suffix = ".bat",
)

filegroup(
    name = "toolchains_files_macos",
    srcs = [
        "@__bazelrio_roborio_toolchain_macos//:all",
    ] + glob(["shims/macos/**"]),
)

filegroup(
    name = "toolchains_files_linux",
    srcs = [
        "@__bazelrio_roborio_toolchain_linux//:all",
    ] + glob(["shims/linux/**"]),
)

filegroup(
    name = "toolchains_files_windows",
    srcs = [
        "@__bazelrio_roborio_toolchain_windows//:all",
    ] + glob(["shims/windows/**"]),
)

cc_toolchain(
    name = "roborio_toolchain_definition_macos",
    all_files = ":toolchains_files_macos",
    ar_files = ":toolchains_files_macos",
    as_files = ":toolchains_files_macos",
    compiler_files = ":toolchains_files_macos",
    dwp_files = ":toolchains_files_macos",
    linker_files = ":toolchains_files_macos",
    objcopy_files = ":toolchains_files_macos",
    strip_files = ":toolchains_files_macos",
    toolchain_config = ":roborio_toolchain_config_macos",
)

cc_toolchain(
    name = "roborio_toolchain_definition_linux",
    all_files = ":toolchains_files_linux",
    ar_files = ":toolchains_files_linux",
    as_files = ":toolchains_files_linux",
    compiler_files = ":toolchains_files_linux",
    dwp_files = ":toolchains_files_linux",
    linker_files = ":toolchains_files_linux",
    objcopy_files = ":toolchains_files_linux",
    strip_files = ":toolchains_files_linux",
    toolchain_config = ":roborio_toolchain_config_linux",
)

cc_toolchain(
    name = "roborio_toolchain_definition_windows",
    all_files = ":toolchains_files_windows",
    ar_files = ":toolchains_files_windows",
    as_files = ":toolchains_files_windows",
    compiler_files = ":toolchains_files_windows",
    dwp_files = ":toolchains_files_windows",
    linker_files = ":toolchains_files_windows",
    objcopy_files = ":toolchains_files_windows",
    strip_files = ":toolchains_files_windows",
    toolchain_config = ":roborio_toolchain_config_windows",
)

toolchain(
    name = "macos",
    exec_compatible_with = [
        # assuming x86/ARM Macs use the same x86 WPILib toolchain
        "@platforms//os:osx",
    ],
    target_compatible_with = ["//constraints/is_roborio:true"],
    toolchain = ":roborio_toolchain_definition_macos",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

toolchain(
    name = "linux",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    target_compatible_with = ["//constraints/is_roborio:true"],
    toolchain = ":roborio_toolchain_definition_linux",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)

toolchain(
    name = "windows",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:windows",
    ],
    target_compatible_with = ["//constraints/is_roborio:true"],
    toolchain = ":roborio_toolchain_definition_windows",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
