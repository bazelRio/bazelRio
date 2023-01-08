cc_library(
    name = "wpilibc",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "//libraries/cpp/wpilib/hal",
        "//libraries/cpp/wpilib/ntcore",
        "//libraries/cpp/wpilib/wpimath",
        "//libraries/cpp/wpilib/wpinet",
        "//libraries/cpp/wpilib/wpiutil",
        "//libraries/cpp/wpilib/cscore",
        "@__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversal//:shared_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena//:shared_libs"],
    }),
)
