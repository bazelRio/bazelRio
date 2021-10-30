load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_opencv_3_4_7_5_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-linuxathena.zip",
        sha256 = "927e12ad2fa5d890504a3891e658493015d2b2cf9444492f0839e63a67f62fe3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-linuxathenastatic.zip",
        sha256 = "f1c3c5eae75ccf75da02434c96139bd14b290fc3ed35f8485921b0e3ef3e0d76",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-windowsx86-64.zip",
        sha256 = "d8723747f4d5a69c693951ec6cf0fb649f8a644786783b936bc15148cceebb38",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-linuxx86-64.zip",
        sha256 = "b4f80e276e12b940f450740cd05c3c9c0e6e879153660b3ef1c3297af7dad12f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-osxx86-64.zip",
        sha256 = "bf6321427b66a31f4330398e7cfd9a78209fd769ac898dd8264f914561c023f8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-windowsx86-64static.zip",
        sha256 = "05301ad10ce47321c3733dfc4b1a024b08ee4f95d3593bc186e1ffcb45ff1a7c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-linuxx86-64static.zip",
        sha256 = "039e8978401406015223a7ee42fc48a1f87e94326b5e927a15485a1714703f63",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-osxx86-64static.zip",
        sha256 = "4c94cea7dd4a6d9b82368fa38024874c48f9366a94750c1df2aa9abd47338225",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2021/opencv/opencv-cpp/3.4.7-5/opencv-cpp-3.4.7-5-headers.zip",
        sha256 = "48852219062e2f9f4b348996d4e23bda3cad6a777a97ee9efa33031115780c44",
        build_file_content = cc_library_headers,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-java",
        artifact = "edu.wpi.first.thirdparty.frc2021.opencv:opencv-java:3.4.7-5",
        artifact_sha256 = "d193e758106595371cc3572b0f05a991cc4f95d9e277b7825ab867c9d1de7e58",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
