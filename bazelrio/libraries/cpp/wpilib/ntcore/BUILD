cc_library(
    name = "ntcore",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers//:headers",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversal//:shared_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena//:shared_libs"],
    }),
)

cc_library(
    name = "jni",
    visibility = ["//visibility:public"],
    deps = [
        ":ntcore",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64//:shared_jni_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64//:shared_jni_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversal//:shared_jni_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena//:shared_jni_libs"],
    }),
)
