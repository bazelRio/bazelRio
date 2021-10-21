cc_library(
    name = "opencv",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_thirdparty_frc2021_opencv_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_thirdparty_frc2021_opencv_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_thirdparty_frc2021_opencv_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_thirdparty_frc2021_opencv_osxx86-64//:shared_libs"],
        "@bazelrio//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_thirdparty_frc2021_opencv_linuxathena//:shared_libs"],
    }),
)
