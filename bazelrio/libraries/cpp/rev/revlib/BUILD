cc_library(
    name = "revlib",
    linkopts = ["-ldl"],
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_com_revrobotics_frc_revlib-cpp_headers//:headers",
        "//libraries/cpp/wpilib/wpilibc",
    ] + select({
        "@bazel_tools//src/conditions:windows": [
            "@__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static//:static_libs",
            "@__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static//:static_libs",
        ],
        "@bazel_tools//src/conditions:linux_x86_64": [
            "@__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static//:static_libs",
            "@__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static//:static_libs",
        ],
        "@bazel_tools//src/conditions:darwin": [
            "@__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversalstatic//:static_libs",
            "@__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic//:static_libs",
        ],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic//:static_libs",
            "@__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic//:static_libs",
        ],
    }),
)

cc_library(
    name = "jni",
    visibility = ["//visibility:public"],
    deps = select({
        "@bazel_tools//src/conditions:windows": [
            "@__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64//:shared_libs",
        ],
        "@bazel_tools//src/conditions:linux_x86_64": [
            "@__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64//:shared_libs",
        ],
        "@bazel_tools//src/conditions:darwin": [
            "@__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal//:shared_libs",
        ],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena//:shared_libs",
        ],
    }),
)
