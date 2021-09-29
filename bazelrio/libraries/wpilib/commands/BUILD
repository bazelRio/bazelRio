cc_library(
    name = "commands",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_wpilibnewcommands_headers//:headers",
        "@bazelrio//libraries/wpilibc",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_osxx86-64//:shared_libs"],
        "@bazelrio//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_wpilibnewcommands_linuxathena//:shared_libs"],
    }),
)
