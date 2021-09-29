cc_library(
    name = "wpilibc",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "//libraries/hal",
        "//libraries/ntcore",
        "//libraries/wpimath",
        "//libraries/wpiutil",
        "@__bazelrio_edu_wpi_first_wpilibc_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_wpilibc_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_wpilibc_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_wpilibc_osxx86-64//:shared_libs"],
        "@bazelrio//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_wpilibc_linuxathena//:shared_libs"],
    }),
)
