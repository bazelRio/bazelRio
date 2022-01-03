cc_library(
    name = "navx",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers//:headers",
        "//libraries/cpp/wpilib/wpilibc",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64static//:static_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_com_kauailabs_navx_frc_navx-cpp_sources//:libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_com_kauailabs_navx_frc_navx-cpp_sources//:libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathenastatic//:static_libs"],
    }),
)
