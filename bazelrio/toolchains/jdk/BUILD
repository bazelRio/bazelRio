toolchain(
    name = "macos",
    exec_compatible_with = [
        "@platforms//os:osx",
    ],
    toolchain = "@__bazelrio_roborio_jdk_macos//:jdk",
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
)

toolchain(
    name = "linux",
    exec_compatible_with = [
        "@platforms//os:linux",
    ],
    toolchain = "@__bazelrio_roborio_jdk_linux//:jdk",
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
)

toolchain(
    name = "windows",
    exec_compatible_with = [
        "@platforms//os:windows",
    ],
    toolchain = "@__bazelrio_roborio_jdk_windows//:jdk",
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
)
