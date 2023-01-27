cc_library(
    name = "new_commands",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers//:headers",
        "//libraries/cpp/wpilib/wpilibc",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversal//:shared_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena//:shared_libs"],
    }),
)
