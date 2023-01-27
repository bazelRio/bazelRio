cc_library(
    name = "hal",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_hal_hal-cpp_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversal//:shared_libs"],
        "//constraints/is_roborio:roborio": [
            "@__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena//:shared_libs",
            "//libraries/cpp/ni/chipobject",
            "//libraries/cpp/ni/netcomm",
            "//libraries/cpp/ni/runtime",
            "//libraries/cpp/ni/visa",
        ],
    }),
)

cc_library(
    name = "jni",
    visibility = ["//visibility:public"],
    deps = [
        ":hal",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64//:shared_jni_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64//:shared_jni_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversal//:shared_jni_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena//:shared_jni_libs"],
    }),
)
