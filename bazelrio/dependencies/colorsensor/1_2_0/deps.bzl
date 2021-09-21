load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

filegroup_all = """filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

def setup_colorsensor_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxathena",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-linuxathena.zip",
        sha256 = "2a14d0ab80f42402824b675c94f138b3137745b63770867053154ee1b4ded7bf",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_headers",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-headers.zip",
        sha256 = "bfa7bbfcb32017ed4e4c9b3138eea559f715b7c1fdf8666ed93938cd85787f70",
        build_file_content = cc_library_headers,
    )
