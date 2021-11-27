toolchain(
    name = "jdk",
    toolchain_type = "@bazel_tools//tools/jdk:runtime_toolchain_type",
    toolchain = select({
        "@bazel_tools//src/conditions:darwin": "@__bazelrio_roborio_jdk_macos//:jdk",
        "@bazel_tools//src/conditions:linux_x86_64": "@__bazelrio_roborio_jdk_linux//:jdk",
        "@bazel_tools//src/conditions:windows": "@__bazelrio_roborio_jdk_windows//:jdk",
    }),
)
