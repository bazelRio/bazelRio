load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_opencv_4_6_0_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-linuxathena.zip",
        sha256 = "edd834227a383cbbd766866b75f657c05b9e5695c059ac1c228af40ed58af4c4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-linuxathenastatic.zip",
        sha256 = "e7d23a56fcd7d7d3bf3302dba6f82833d36295dbbbbde5bbd3ef7897ea6ec243",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-windowsx86-64.zip",
        sha256 = "40bb51c95744274c968b15cfa4ddde90340a1112a5e9627795563ed12cd16512",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-linuxx86-64.zip",
        sha256 = "ee5cd00a5896bf130493854c8c8703eab0f58d7744e60a7d5feb3ec795abe8d9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-osxx86-64.zip",
        sha256 = "71304483fdadd16a62732824e341fef96d3dc81d2460f018761a6b75ed86bf41",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-windowsx86-64static.zip",
        sha256 = "c4d3d4c98cc9b0e8d79bf89159d86f3d2b609a9bf06bcb7a19362f00377f8368",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-linuxx86-64static.zip",
        sha256 = "0690b073e4ddeb0e0726b2a95af9097f7fb9cb2be6be00d0cc964fd056e4aa0c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-osxx86-64static.zip",
        sha256 = "17659d3e8df23a2b62172a31cbe449c721c7c719332cfb72adc2a0fd1b6913c8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/opencv/opencv-cpp/4.6.0-2/opencv-cpp-4.6.0-2-headers.zip",
        sha256 = "6b576753559c88822190dff465cdbd3f6deedce184f7ff5ad63274c6517d6cf4",
        build_file_content = cc_library_headers,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-java",
        artifact = "edu.wpi.first.thirdparty.frc2023.opencv:opencv-java:4.6.0-2",
        artifact_sha256 = "cada7ed80572af2e47a8e27c9f3b8e27b0636674892179030cb129f380eb2abd",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
