load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_revlib_2022_0_0_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-headers.zip",
        sha256 = "fc8673ee4f3fbe645b20d1ecf100844c6152b22d661b2acd3a4ad0a7ad71e7cb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-headers.zip",
        sha256 = "6b1737ce847cbd651ad0a84c3e7d69ec5ee703f1955afbbca440f33597d9c8bf",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-windowsx86-64.zip",
        sha256 = "3f8572c8fd8a0cd241e849b410128072e3c3896cbd63f76635bc2fb55c46c015",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-windowsx86-64static.zip",
        sha256 = "3e319f63611aad25e268e2d8936eaf5e02a97605c7f3fdd675ab55af5eabd8f2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-linuxx86-64.zip",
        sha256 = "276ed5fc658d404a1bfd9ec645aa4e22ecca57078d5a117e336f3d85aa7e1bdb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-linuxx86-64static.zip",
        sha256 = "afa757da9c3f88f18b612e94afab6c56c0996f1174c4c867f251d2d8f348b9a8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-linuxathena.zip",
        sha256 = "8730494bff51e7fbf67c0eb2bd83edd67ce81a20cbe6d6b69b6f3d1a19112f64",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-linuxathenastatic.zip",
        sha256 = "781ea640501c62b6f231d4946fb9be86de627142f70ab43081b64f432beb62e7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-osxx86-64.zip",
        sha256 = "3c319715a80c6ce5323b683cf52621d2cff6a602c00bd547499e886ec5cbbd0a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.0.0/REVLib-cpp-2022.0.0-osxx86-64static.zip",
        sha256 = "6e2cf545a5fd9afb1123d6e0b8005d837371aacd893b97923f86344399bfee02",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-windowsx86-64.zip",
        sha256 = "ee60b980b8026010dcbefbcf805a7fee488d12bb0a8592929c607bf88841e4ff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-windowsx86-64static.zip",
        sha256 = "0749820dae3d7239587b6a92b01b62d3641676ea268408f9042ccb10dc46d05f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-linuxx86-64.zip",
        sha256 = "c18a22fd86ef841931a318ff91e0cd18defa2bd802ceae593350ed8c5c70dc6e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-linuxx86-64static.zip",
        sha256 = "e0cc41288c171c6e6f42c3c3f1175f88279c0ea2ac6ce7f2f02129c3d07de72c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-linuxathena.zip",
        sha256 = "ff5296b7a76f3d49a23ab337a58ecfaafdbe5a87e513802b88294b3fe6ab6533",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-linuxathenastatic.zip",
        sha256 = "30109f4e2f64b47ef593e886183833a7219645e5d85450873e38e26148e28a5f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-osxx86-64.zip",
        sha256 = "67f19a2688ca32f7e2e718afcf92ea7ab35dc92ceab29be1477e36a3c261bd7b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.0.0/REVLib-driver-2022.0.0-osxx86-64static.zip",
        sha256 = "b86d65a5e27c6da4194af022d8676f9a4fd65850e3851dfd33e36cf3b511354b",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_revlib-java",
        artifact = "com.revrobotics.frc:REVLib-java:2022.0.0",
        artifact_sha256 = "bc8c863df9362b9116a5be67a328055d380b41ff9e0b7c558e91d4d469b85d25",
        server_urls = ["https://maven.revrobotics.com"],
    )
