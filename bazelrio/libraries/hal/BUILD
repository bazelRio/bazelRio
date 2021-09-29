cc_library(
    name = "hal",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_hal_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_hal_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_hal_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_hal_osxx86-64//:shared_libs"],
        "@bazelrio//constraints/is_roborio:roborio": [
            "@__bazelrio_edu_wpi_first_hal_linuxathena//:shared_libs",
            "//libraries/ni-libraries/chipobject",
            "//libraries/ni-libraries/netcomm",
            "//libraries/ni-libraries/runtime",
            "//libraries/ni-libraries/visa",
        ],
    }),
)
