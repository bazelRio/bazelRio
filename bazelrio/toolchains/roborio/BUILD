load(":toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "roborio_toolchain_config",
    host_os = select({
        # assuming x86/ARM Macs use the same x86 WPILib toolchain
        "@bazel_tools//src/conditions:darwin": "macos",
        "@bazel_tools//src/conditions:linux_x86_64": "linux",
        "@bazel_tools//src/conditions:windows": "windows",
        "//conditions:default": "unknown",
    }),
    script_suffix = select({
        "@bazel_tools//src/conditions:windows": ".bat",
        "@bazel_tools//src/conditions:host_windows": ".bat",
        "//conditions:default": "",
    }),
)

filegroup(
    name = "toolchains_files",
    srcs = select({
        # assuming x86/ARM Macs use the same x86 WPILib toolchain
        "@bazel_tools//src/conditions:darwin": [
            "@__bazelrio_roborio_toolchain_macos//:all",
        ] + glob(["shims/macos/**"]),
        "@bazel_tools//src/conditions:linux_x86_64": [
            "@__bazelrio_roborio_toolchain_linux//:all",
        ] + glob(["shims/linux/**"]),
        "@bazel_tools//src/conditions:windows": [
            "@__bazelrio_roborio_toolchain_windows//:all",
        ] + glob(["shims/windows/**"]),
    }),
)

cc_toolchain(
    name = "roborio_toolchain_definition",
    all_files = ":toolchains_files",
    ar_files = ":toolchains_files",
    as_files = ":toolchains_files",
    compiler_files = ":toolchains_files",
    dwp_files = ":toolchains_files",
    linker_files = ":toolchains_files",
    objcopy_files = ":toolchains_files",
    strip_files = ":toolchains_files",
    toolchain_config = ":roborio_toolchain_config",
)

toolchain(
    name = "roborio",
    target_compatible_with = ["//constraints/is_roborio:true"],
    toolchain = ":roborio_toolchain_definition",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
)
