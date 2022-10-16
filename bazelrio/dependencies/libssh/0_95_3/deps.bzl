load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_libssh_0_95_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-3/libssh-0.95-3-windowsx86-64static.zip",
        sha256 = "c9d8f0004b620b9a6cc31fbe562cfcb6fa6cab42bc0c0edf2f2607063c7bf8e6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-3/libssh-0.95-3-linuxx86-64static.zip",
        sha256 = "251556e4ea488deafd609d6b7acc4684093dc7b8e60fdae3e5b635ca7863916f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-3/libssh-0.95-3-osxx86-64static.zip",
        sha256 = "b9e12f334d5fbb641f697ecf787c86712da1b9e335721d4ad4655af46220c67e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-3/libssh-0.95-3-headers.zip",
        sha256 = "e52b7f8517623a79818b267cdc26257a495375b2433c10f6eb93f1412c3cd76b",
        build_file_content = cc_library_headers,
    )
