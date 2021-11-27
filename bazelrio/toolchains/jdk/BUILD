toolchain(
    name = "macos",
    exec_compatible_with = [
        # assuming x86/ARM Macs use the same x86 WPILib toolchain
        "@platforms//os:osx",
    ],
    toolchain = "@__bazelrio_roborio_jdk_macos//:jdk",
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
)

toolchain(
    name = "linux",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:linux",
    ],
    toolchain = "@__bazelrio_roborio_jdk_linux//:jdk",
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
)

toolchain(
    name = "windows",
    exec_compatible_with = [
        "@platforms//cpu:x86_64",
        "@platforms//os:windows",
    ],
    toolchain = "@__bazelrio_roborio_jdk_windows//:jdk",
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
)
