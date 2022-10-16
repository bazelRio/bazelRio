load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_imgui_1_86_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/imgui/1.86-1/imgui-1.86-1-windowsx86-64static.zip",
        sha256 = "3106891bc46a3782d5855434dc793e37983a664fa350b5d98c472caf8b21d1b0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/imgui/1.86-1/imgui-1.86-1-linuxx86-64static.zip",
        sha256 = "aad7696e6eadd4a528bed804a95a7890c9bb887061e5f423b97dbbeb2d0a3ec7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/imgui/1.86-1/imgui-1.86-1-osxx86-64static.zip",
        sha256 = "a0bce7524906b9655c5eacda35040c3093dfb30ee776a2e538b71c42dbf4bcf5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/imgui/1.86-1/imgui-1.86-1-headers.zip",
        sha256 = "5ebdb86a9730ce908d3cfdaa5058ab001e7fa5e5b40b108dcc2b5f31f32cd883",
        build_file_content = cc_library_headers,
    )
