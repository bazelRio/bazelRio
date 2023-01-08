cc_library(
    name = "cscore",
    linkstatic = 1,
    visibility = ["//visibility:public"],
    deps = [
        "@__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers//:headers",
        "//libraries/cpp/opencv",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64//:shared_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversal//:shared_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena//:shared_libs"],
    }),
)

cc_library(
    name = "jni",
    visibility = ["//visibility:public"],
    deps = [
        ":cscore",
    ] + select({
        "@bazel_tools//src/conditions:windows": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64//:shared_jni_libs"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64//:shared_jni_libs"],
        "@bazel_tools//src/conditions:darwin": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversal//:shared_jni_libs"],
        "//constraints/is_roborio:roborio": ["@__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena//:shared_jni_libs"],
    }),
)
