cc_library(
    name = "cscore",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_cscore_headers//:headers",
        "//libraries/opencv",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_cscore_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_cscore_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_cscore_osxx86-64//:shared_libs"],
        "@bazelrio//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_cscore_linuxathena//:shared_libs"],
    }),
)
