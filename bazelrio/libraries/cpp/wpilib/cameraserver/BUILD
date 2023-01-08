cc_library(
    name = "cameraserver",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers//:headers",
        "//libraries/cpp/wpilib/wpiutil",
        "//libraries/cpp/wpilib/ntcore",
        "//libraries/cpp/wpilib/cscore",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversal//:shared_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena//:shared_libs"],
    }),
)
