cc_library(
    name = "colorsensor",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_headers//:headers",
        "//libraries/cpp/wpilib/wpilibc",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_windowsx86-64static//:static_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxx86-64static//:static_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_osxuniversalstatic//:static_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxathenastatic//:static_libs"],
    }),
)
