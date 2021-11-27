toolchain(
    name = "macos",
    exec_compatible_with = [
        "@platforms//os:osx",
    ],
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
    toolchain = "@__bazelrio_roborio_jdk_macos//:jdk",
)

toolchain(
    name = "linux",
    exec_compatible_with = [
        "@platforms//os:linux",
    ],
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
    toolchain = "@__bazelrio_roborio_jdk_linux//:jdk",
)

toolchain(
    name = "windows",
    exec_compatible_with = [
        "@platforms//os:windows",
    ],
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
    toolchain = "@__bazelrio_roborio_jdk_windows//:jdk",
)
