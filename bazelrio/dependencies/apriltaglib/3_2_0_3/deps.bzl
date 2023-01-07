load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_apriltaglib_3_2_0_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_apriltaglib_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/apriltaglib/3.2.0-3/apriltaglib-3.2.0-3-linuxarm32static.zip",
        sha256 = "d1f85522bd671816de3edc952271b9f9fd4e295ecbf42b8e810bc527e829a33b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_apriltaglib_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/apriltaglib/3.2.0-3/apriltaglib-3.2.0-3-linuxarm64static.zip",
        sha256 = "663d89c5e1077ecd178ef3ac73fcab5a5dff3ed97dfc45f2e40b4649da3a460b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_apriltaglib_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/apriltaglib/3.2.0-3/apriltaglib-3.2.0-3-linuxx86-64static.zip",
        sha256 = "2ba90e634b60ffcc0c2a8548e0d4e98060f59224523963fdd896b6ce9efad6c2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_apriltaglib_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/apriltaglib/3.2.0-3/apriltaglib-3.2.0-3-osxuniversalstatic.zip",
        sha256 = "5816cab35c0f8b564f487aae43dbd037b36518db983d6f7f3a19de5ca744c42d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_apriltaglib_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/apriltaglib/3.2.0-3/apriltaglib-3.2.0-3-windowsx86-64static.zip",
        sha256 = "b6950ac078a87666225bb931554b04388f4c5cefe572bd90eeadb1a0ebf2d402",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_apriltaglib_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/apriltaglib/3.2.0-3/apriltaglib-3.2.0-3-headers.zip",
        sha256 = "bf2f4196f6d2cb80de8259221b0977fe89143b86071d10c8e613a1d9da37ed82",
        build_file_content = cc_library_headers,
    )
