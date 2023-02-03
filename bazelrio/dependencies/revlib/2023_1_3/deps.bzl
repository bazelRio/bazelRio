load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_revlib_2023_1_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-headers.zip",
        sha256 = "db432874fe0f9b1fa6def1713d78e3168f93e205835a424519e4e9dd837e9e9b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-headers.zip",
        sha256 = "aa3c4871cac7c2c50fc6bfe322a41bf25802f1c1c80460bbd41cca626d1d3f45",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-windowsx86-64.zip",
        sha256 = "7c0a039195a69ac49dcf339a87096a35b9b8ff4c5cee2a5c11bbc326761f32bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-windowsx86-64static.zip",
        sha256 = "19acedf872cd97f174ca12ff850d42531a39b8c5b4319f51f2e86d7acebe7a8b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxarm64.zip",
        sha256 = "f0efd4c7b1e65cb6284962f647749c7e94465a87b6333a32284d524138e64c0d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxarm64static.zip",
        sha256 = "56965fd370282e5c1eff307e74f11ebede3e7c5d5e85f750119f8ec1a53b6f3b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxx86-64.zip",
        sha256 = "989397cd5c5438cd1844562a2ee2308002e2a3d8eba4a29c938598b5757a3825",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxx86-64static.zip",
        sha256 = "522fb36b4ce3a5336c2a73dd8a5f6c14643d1627d2b9cd794c270f145641b393",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxathena.zip",
        sha256 = "c181ba26da063d61890eb5f383d08aa455ebe30c981a502652578620e787aeac",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxathenastatic.zip",
        sha256 = "164ad04ede2ce2b3a9cc69f2dd60417629f6417a634851b46188492a635632a5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxarm32.zip",
        sha256 = "1602c6061862322e220503fe35a0a51e494098c48667fa40256b020d355cfc69",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-linuxarm32static.zip",
        sha256 = "956bcefda1f81d47730067658b6c4ecdebc2e6e949f69d1b385fd62c664eede0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-osxuniversal.zip",
        sha256 = "4664e8e80a84fd1d9aff607cc9722d39b2d96fde72b57491ebd7f5c346ee6112",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.3/REVLib-cpp-2023.1.3-osxuniversalstatic.zip",
        sha256 = "94468f1b8c74a5f9ebb4dd768aa16ab04ba9c4be98f74839387a83e77e039d29",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-windowsx86-64.zip",
        sha256 = "7cfed19789fccb04b465555e613f2027572578723df23865c698bb4658a779bf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-windowsx86-64static.zip",
        sha256 = "130519993a16069cd56626db8b8a6a1abfe1a402e489d469d7695a8e0d9fcfb9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxarm64.zip",
        sha256 = "db0e4af17de56b42c9775cbd77095ff6d56adc7d655eff09260735296cce2036",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxarm64static.zip",
        sha256 = "90d85cde2d4804f4509cd2665e10a1182fd37d483fdaeaec85256849dab00cad",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxx86-64.zip",
        sha256 = "eb3ca979e4184fa27681484e52ee4c33bd935372e186bc95c5abc08fedb638f9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxx86-64static.zip",
        sha256 = "6d7e3641b5b3a35d62eb5bb81044c5c8999ef0d427b6d135e96e7d62d7e6107f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxathena.zip",
        sha256 = "74e1fff020f0bef1c94d714360067b73af268e4f78801f0b33402fedfa22c2bc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxathenastatic.zip",
        sha256 = "5f2f774178f646ec913a607a64b23c794e6b03425bf19f2fd37f356ce18fe764",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxarm32.zip",
        sha256 = "dccd7da5aeb201ddd2879f85c7195d15de4972b36607a039532525385f8eded0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-linuxarm32static.zip",
        sha256 = "64c0715e46f1f2dbd77711c1fec9fa1c0e0d289250c21b32a93ff52af9ee169c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-osxuniversal.zip",
        sha256 = "9f7b90d0f4d3c83e0409e6fcb1ffaefd300c9d2127139b1e4caa9103cd1c929d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.3/REVLib-driver-2023.1.3-osxuniversalstatic.zip",
        sha256 = "b3c27218e8acec83ec0fcbf84aa6f1dd89bb117a109d0dc52dc04cda5d467f8c",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_revlib-java",
        artifact = "com.revrobotics.frc:REVLib-java:2023.1.3",
        artifact_sha256 = "ff68930087e8d750ad56264e06078faaea820614561f8ddc55840eb391211271",
        server_urls = ["https://maven.revrobotics.com"],
    )
