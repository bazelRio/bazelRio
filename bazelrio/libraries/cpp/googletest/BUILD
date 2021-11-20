cc_library(
    name = "opencv",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_thirdparty_frc_googletest_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_thirdparty_frc_googletest_windowsx86-64static//:static_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_thirdparty_frc_googletest_linuxx86-64static//:static_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_thirdparty_frc_googletest_osxx86-64static//:static_libs"],
    }),
)
