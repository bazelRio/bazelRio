load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_imgui_1_89_1_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.1-1/imgui-1.89.1-1-linuxarm32static.zip",
        sha256 = "aad8f78a48a31ac9ddae9d051931a4f6c4f41c97704b7b906488048d2e553356",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.1-1/imgui-1.89.1-1-linuxarm64static.zip",
        sha256 = "0a1fa8f6c16fcd6e5f5f97a121d6a6c7f8ee81992b806e47b55d7069c4f6d883",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.1-1/imgui-1.89.1-1-linuxx86-64static.zip",
        sha256 = "7024aa916fe82bd46ffe1a162164223d67e08310e3d81fd64e4e2adf51148903",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.1-1/imgui-1.89.1-1-osxuniversalstatic.zip",
        sha256 = "de02fd5208f8901efc94eb19a19b873775c97293fd0bf1818fa1638a1d58a5c2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.1-1/imgui-1.89.1-1-windowsx86-64static.zip",
        sha256 = "1aa7aa58d81236dd61b5f27d32ab66347f8a8df681f299b79eeb5956d1ee5c15",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.1-1/imgui-1.89.1-1-headers.zip",
        sha256 = "fa496c97819254fcace3acceb688b4ac2e169157fc017c8b1eaaed6ec48ada9c",
        build_file_content = cc_library_headers,
    )
