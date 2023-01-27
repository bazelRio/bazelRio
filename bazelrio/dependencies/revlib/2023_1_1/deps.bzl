load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_revlib_2023_1_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-headers.zip",
        sha256 = "66c86a167deaf7f476a3fd5deb98518bbe3bbc94c1968339619928f0577a805d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-headers.zip",
        sha256 = "971815e734a6f1b78cc1f04b8c253f0c7633ca12a8eb078d36cb8bf2d8e0f656",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "f30b1f564b683858a3c5d0c3b1abe9b3db126047ad546a1559c86a1e516aa134",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "7fc4b4e2570f65fa85e38f693aa9656a7dc83b836ed1bf338645e995c9ca06d7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "71b953e4c3edba95724d7fcc3595069eee71724f051d72c76ee159ccf9195a6b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "91533fb120a33bac933b373d8737639ac75839c6f32b45f29c3ecc2c6b1dff51",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "6dbbefd925869c8289cd09400acb582f4f0df1a3f83fbe887050235bd2f64d7b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "f5cbb485dc7b84b3d9320b8e05e0ac0acd680a197e81b12dcdd7927feebffab7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxathena.zip",
        sha256 = "4e4e1ffb0d0811c15cb2338a5d3892776c84fef34622282db73a283b4b8baadc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "5e3557ab1ac7e5a814db1381a139710dc6d4315e1a920c9a477205db1126f4f6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "3483e8b6c75f6a8f4ec881de4ddfcfa80f8ec62dfce740d11ee5b5451291daa3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "7dcd5fa961b5b036ba2af6b5da29417105aa3ff2dd391b0aa6eab7934b33630a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "641311dc2cd7a0e317029060c342df7dbd23c538576e00bafb25e94488df91ad",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.1/REVLib-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "4c3be932e906c57b98c896d176bad308fa0a2e894e26e8825bcb88549e9c6e5c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-windowsx86-64.zip",
        sha256 = "886cc9f8efca4a2c310cc7079c0d8c085ea7af8ca61eb601f7d694340c8340e4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-windowsx86-64static.zip",
        sha256 = "436d402011331bdec5e1df102ef75e539841d0fb3a87b99d225e1b9900f3daf1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxarm64.zip",
        sha256 = "893e274a57e2a090d29af08378a5e72e51cd807e1511132f953292124580467e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxarm64static.zip",
        sha256 = "e7a5de6c652a87d5e189cc4ba73f8ea04822c464ee235b157a20d5c12b6394a0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxx86-64.zip",
        sha256 = "fd47c670ac5dc1dce73e1d6c53cc7082d4b076721b65fa1616798a7a3edd4f5f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxx86-64static.zip",
        sha256 = "f8281c1c0b93d29d6fc92112b092e319fecb05a8addb789dc30513be63542345",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxathena.zip",
        sha256 = "5d39389606c72cc8b9fe6852fa451dacc3761507ac3bf0cd933fe084f3861edd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxathenastatic.zip",
        sha256 = "8c5f9e2975fc37fd1a87bb5a303fdf9e1f0de93afa6505917813b2510a4f190d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxarm32.zip",
        sha256 = "8ee3ec0fe214facfaa20e970bc0166b6479f66df2e124b4b37a1d4adab7960f2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-linuxarm32static.zip",
        sha256 = "53d238f18b396550238eebb5fc2ec6899ec1b357d262bb661634ec4aeaf1537f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-osxuniversal.zip",
        sha256 = "9981451b034568f582d817545e8f22c8f631e3f2e07c5a38e89f4b0d52ea6cb9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.1/REVLib-driver-2023.1.1-osxuniversalstatic.zip",
        sha256 = "55845563540b570ba5c3988c8b610e0f5715997b659f6ff388b7dc9ca577ee86",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_revlib-java",
        artifact = "com.revrobotics.frc:REVLib-java:2023.1.1",
        artifact_sha256 = "c70cdf664c9cf883667c9f9768c1a96899d99c415e569eb6d9f6c8f156a7fce2",
        server_urls = ["https://maven.revrobotics.com"],
    )
