load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_libssh_0_95_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/libssh/0.95-1/libssh-0.95-1-windowsx86-64static.zip",
        sha256 = "9a38e264cff4450dfedc729453ffb6367c93afee25e2073e46b043666c472602",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/libssh/0.95-1/libssh-0.95-1-linuxx86-64static.zip",
        sha256 = "b19732cbab82e432d9c4b8e17ad03b5e00d2771b7dbbab9c2ccc4948263f7a22",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/libssh/0.95-1/libssh-0.95-1-osxx86-64static.zip",
        sha256 = "871cdf9713ebbccb130993ee46821ed38dd3956780c7905ed4a450aa4bd89c91",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/libssh/0.95-1/libssh-0.95-1-headers.zip",
        sha256 = "2964545c9bd5131218641c1e31488d39edd2eabe77883818d346536025ff664d",
        build_file_content = cc_library_headers,
    )
