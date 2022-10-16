load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_imgui_1_88_5_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.88-5/imgui-1.88-5-windowsx86-64static.zip",
        sha256 = "51c56c194e227dd62219607f7f1e2a4dc0fcecd65083cd4e2961ed59e863cc55",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.88-5/imgui-1.88-5-linuxx86-64static.zip",
        sha256 = "23355a8cdb7e752a88691687beb7022b1716b846f20e64c38f6ea7deb8536afc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.88-5/imgui-1.88-5-osxx86-64static.zip",
        sha256 = "5ae190526c22757dfdb3e46b321730fecbe99cea3e45982b0fe5f62efd6a4fa1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.88-5/imgui-1.88-5-headers.zip",
        sha256 = "d1d6b9e7bcef28d75edf3f24e22e328ddedcc9b39c0df53a498c1434b479e716",
        build_file_content = cc_library_headers,
    )
