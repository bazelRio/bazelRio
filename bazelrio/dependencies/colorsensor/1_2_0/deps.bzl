load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_colorsensor_1_2_0_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_headers",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-headers.zip",
        sha256 = "bfa7bbfcb32017ed4e4c9b3138eea559f715b7c1fdf8666ed93938cd85787f70",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_source",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-source.zip",
        sha256 = "dc9c1d446a3832c0852e11cfd6aec604eedc28ba75a686c68fd66045221627b2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_windowsx86-64",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-windowsx86-64.zip",
        sha256 = "27c8a3b83c200fcf429b0f7f3466c59ab33db59a7dcaf2321f6a5a7a43914a74",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_windowsx86-64static",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-windowsx86-64static.zip",
        sha256 = "432587b2ceda321a23ffb8949b7d1ea1807fa525d0965797ec2ad9cfb410f491",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxx86-64",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-linuxx86-64.zip",
        sha256 = "5539001938d3cab8e114c468dc6cc1cfcb87b5a1e34903839de21200f41fc80e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxx86-64static",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-linuxx86-64static.zip",
        sha256 = "fcbcde37d8f27e579d3274ca1a28a7c93841855885f8a22026f5438c685a1d6c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxathena",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-linuxathena.zip",
        sha256 = "2a14d0ab80f42402824b675c94f138b3137745b63770867053154ee1b4ded7bf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxathenastatic",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-linuxathenastatic.zip",
        sha256 = "a5a2fa49786450c0a1049bb8485d12f9355242049db8fefc9e38423e91dec33c",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_colorsensorv3-java",
        artifact = "com.revrobotics.frc:ColorSensorV3-java:1.2.0",
        artifact_sha256 = "dbd618cf9261ab87fabb6842e4abf9cd70cef7ca665213c742e75712ca94e5ca",
        server_urls = ["http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven"],
    )
