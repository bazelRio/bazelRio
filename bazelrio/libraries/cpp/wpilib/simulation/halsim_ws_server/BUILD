cc_library(
    name = "halsim_ws_server",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxuniversal//:shared_libs"],
        "//constraints/is_roborio:roborio": [],
    }),
)
