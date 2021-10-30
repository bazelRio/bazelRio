load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_opencv_4_5_2_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-linuxathena.zip",
        sha256 = "92edb18cc8fb9872c6b2dd83f7c4b3fdb8353ab1807d1202b120063ec338f39a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-linuxathenastatic.zip",
        sha256 = "fb322dbdbd5f7aa6a9595c6be44cceadecd32be19aa59d381e6663c8bc1e5ddd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-windowsx86-64.zip",
        sha256 = "583bd691a28ad689f98ac9633c1e0a93847d66b3b31f310edf0f4615ac79b9dc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-linuxx86-64.zip",
        sha256 = "f036f133d849dffed867b1ca235be85152ec25f3ec56fd412693390840fa5009",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-osxx86-64.zip",
        sha256 = "b0edd2df6dad473983d92fa0ea65aa8497a98f1ccbe04ab758c6910a1cda9958",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-windowsx86-64static.zip",
        sha256 = "7cd401fdbdf7a55b06bcd891460f0858f3bc3ef0c81546036586981725ea4b25",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-linuxx86-64static.zip",
        sha256 = "7ed97fd12ec447136e7698267d7fd7537f7ef95e4b834f954b84de81fb9cc150",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-osxx86-64static.zip",
        sha256 = "c430e5b051541bbde5970246d10d780ddcd3f8a6025b7846f663572daba09e4d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2022/opencv/opencv-cpp/4.5.2-1/opencv-cpp-4.5.2-1-headers.zip",
        sha256 = "cae9b4b5e31c15e9f7f0223b5ed7cc8c13dc3f4135c9002e8e73c7b7bf2fcf30",
        build_file_content = cc_library_headers,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-java",
        artifact = "edu.wpi.first.thirdparty.frc2022.opencv:opencv-java:4.5.2-1",
        artifact_sha256 = "13e26524b06fe68c62d3ed285718014bb8c90b94b27223e037f252bd65b6121a",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
