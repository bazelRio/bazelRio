load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_googletest_1_9_0_5_437e100_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_googletest_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/googletest/1.9.0-5-437e100-1/googletest-1.9.0-5-437e100-1-windowsx86-64static.zip",
        sha256 = "660ad88c63078064b0de58aac9880f9b9153ef706fbaccc5065694c9364645fe",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_googletest_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/googletest/1.9.0-5-437e100-1/googletest-1.9.0-5-437e100-1-linuxx86-64static.zip",
        sha256 = "a23da5ab5a2d80029f576441183e94bf193fecfbf74ad3ccb1d8cba26c010445",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_googletest_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/googletest/1.9.0-5-437e100-1/googletest-1.9.0-5-437e100-1-osxx86-64static.zip",
        sha256 = "d592923bb94be2aa73a20a7470075a2fa8b5a4289af3d5bdda46bf6d48dfd322",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_googletest_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/googletest/1.9.0-5-437e100-1/googletest-1.9.0-5-437e100-1-headers.zip",
        sha256 = "b5ac0c18e8fd3c4ce598473b830308230eb8ea6197b7f068ea5fb74a56d9ad8d",
        build_file_content = cc_library_headers,
    )
