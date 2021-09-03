load(":toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(
    name = "roborio_toolchain_config",
    host_os = select({
        "@bazel_tools//src/conditions:darwin_x86_64": "macos",
        "@bazel_tools//src/conditions:linux_x86_64": "linux",
        "@bazel_tools//src/conditions:windows": "windows",
    }),
    script_suffix = select({
        "@bazel_tools//src/conditions:windows": ".bat",
        "//conditions:default": "",
    }),
)

filegroup(
    name = "toolchains_files",
    srcs = select({
        "@bazel_tools//src/conditions:darwin_x86_64": [
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
    toolchain = ":roborio_toolchain_definition",
    toolchain_type = "@bazel_tools//tools/cpp:toolchain_type",
    target_compatible_with = ["//constraints/is_roborio:true"],
)
