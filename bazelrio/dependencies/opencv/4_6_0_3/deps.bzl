load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_opencv_4_6_0_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxathena.zip",
        sha256 = "02ac45d6af0e3b02537053019ac574ece74d3cbea83c1fe212cd44bffdb549ae",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxathenastatic.zip",
        sha256 = "f9335669826577c469c85f1497bd9b74091c53a4337ee1ba2a66496c7e70bdfd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxarm32.zip",
        sha256 = "33aa473ab72262cb70b489807dc46f0e92f3f547b304f737b950da0d42bc624c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxarm64.zip",
        sha256 = "57277972288a5c01850a59bfa076157a674707447870e64b9673139956de4f94",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxx86-64.zip",
        sha256 = "f7f1595d9379d6c480e1f8500db7f3d531711ceee4e9e7696540008f9db5fbb1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-osxuniversal.zip",
        sha256 = "ca915454d3f2518cd8ed9e64b91de92148846236cf954ac343dc29005b388138",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-windowsx86-64.zip",
        sha256 = "ef37d0a34722f42c1d9e4c2b123fb8afdb7f5a37a8ea12c8cc081b7e85953029",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxarm32static.zip",
        sha256 = "0cd7b974bd09f7f305bf7ed388f983ad783d98f1badf2def6d20b44ad5213fd1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxarm64static.zip",
        sha256 = "fb36c4d5aea52c7527156895ed4f4f11af21eee8d023f208b136bd27230b912f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-linuxx86-64static.zip",
        sha256 = "0f5ab7f27e7ddcf2eccbc8db4523f660ef69f977c8b71c5408cc4c9c3c07ce71",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-osxuniversalstatic.zip",
        sha256 = "4c7d13994bc2c169fd7afd96212d00f84e10747071762308ab1ab02b92eff56c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-windowsx86-64static.zip",
        sha256 = "f8c496d02a44aef6efc490327db74d9ded88265f273b044fec66b8b78c3c584d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-3/opencv-cpp-4.6.0-3-headers.zip",
        sha256 = "1f099880e932b4f19b1c34ced18f368d819496e9c79a8ed4e5006da7452d0c6c",
        build_file_content = cc_library_headers,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-java",
        artifact = "edu.wpi.first.thirdparty.frc2023.opencv:opencv-java:4.6.0-3",
        artifact_sha256 = "3ddaa212991f44b7930b5b4ca667d3e8462d10b392d600a57b6d9af10ee1d3c1",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
