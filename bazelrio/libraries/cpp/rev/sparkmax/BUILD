cc_library(
    name = "sparkmax",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_headers//:headers",
        "//libraries/cpp/wpilib/wpilibc",
    ] + select({
        "@bazel_tools//src/conditions:windows": [
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_windowsx86-64static//:static_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_windowsx86-64static//:static_libs",
        ],
        "@bazel_tools//src/conditions:linux_x86_64": [
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxx86-64static//:static_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxx86-64static//:static_libs",
        ],
        "@bazel_tools//src/conditions:darwin": [
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_osxx86-64static//:static_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_osxx86-64static//:static_libs",
        ],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxathenastatic//:static_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxathenastatic//:static_libs",
        ],
    }),
)

cc_library(
    name = "jni",
    visibility = ["//visibility:public"],
    deps = select({
        "@bazel_tools//src/conditions:windows": [
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_windowsx86-64//:shared_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_windowsx86-64//:shared_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_windowsx86-64//:shared_jni_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_windowsx86-64//:shared_jni_libs",
        ],
        "@bazel_tools//src/conditions:linux_x86_64": [
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxx86-64//:shared_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxx86-64//:shared_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxx86-64//:shared_jni_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxx86-64//:shared_jni_libs",
        ],
        "@bazel_tools//src/conditions:darwin": [
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_osxx86-64//:shared_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_osxx86-64//:shared_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-cpp_osxx86-64//:shared_jni_libs",
            "@__bazelrio_com_revrobotics_frc_sparkmax-driver_osxx86-64//:shared_jni_libs",
        ],
        "//constraints/is_roborio:roborio": [],
    }),
)
