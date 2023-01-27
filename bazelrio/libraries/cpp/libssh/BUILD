cc_library(
    name = "libssh",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_thirdparty_frc_libssh_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_thirdparty_frc_libssh_windowsx86-64static//:static_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_thirdparty_frc_libssh_linuxx86-64static//:static_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_thirdparty_frc_libssh_osxuniversalstatic//:static_libs"],
    }),
)
