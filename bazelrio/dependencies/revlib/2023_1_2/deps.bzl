load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_revlib_2023_1_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-headers.zip",
        sha256 = "de7572b0e0a0fe73bd1fc1409b894d0d186faddd286e94cfeaa59910d02417a1",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-headers.zip",
        sha256 = "45414b7264797c867b3b320dae9561f5addf4966570a0318523d5bd54a898bdd",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-windowsx86-64.zip",
        sha256 = "ddb2d2eacbedc796afd9e7bae7e598c32476f003d732a1c4dbe87e17e8e5ca0e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-windowsx86-64static.zip",
        sha256 = "dd379adb83db2fc33bc8d8d29460a7af28dac4bc68aa80b218d68e9ba170cff7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxarm64.zip",
        sha256 = "bc511c4e7b6994910d25980440211fc6c8e3df643680b1c4d3019a39e9326775",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxarm64static.zip",
        sha256 = "4eb85fb1a6a1868d2be42dbfb6014297c8e7f7fe055504f8daa8611c5e32bf6a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxx86-64.zip",
        sha256 = "0a2107eebe0ca5665d0586d19d96c17d1f94eeab3da9b7685ce26eaa0b02a064",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxx86-64static.zip",
        sha256 = "d43f4a9e34c24f6033d43955f2aa21209221817aa50837ed2947a8a399cc4e87",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxathena.zip",
        sha256 = "0fa63214a080b8a2840bc0bf3135774f6863978db95cebc3e2c04572c54cc95f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxathenastatic.zip",
        sha256 = "dc244db4216ee5465333edc5d721b8624616ed397fc01d09f872d476c2fbd87e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxarm32.zip",
        sha256 = "9cf14ee7ad298e70a4e4855a4499fd0ce4ffc5629fd4c1f1f6cd6867950262f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-linuxarm32static.zip",
        sha256 = "0bc7422915e78d7555166d45bfaef7b1f7c80c03cd6bfb534bc78efb0f52c1c2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-osxuniversal.zip",
        sha256 = "301eb80ea57f3bdba7dec0b3917b152a95e5e35f3e018e4b1ca9e4e833d6fe9c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2023.1.2/REVLib-cpp-2023.1.2-osxuniversalstatic.zip",
        sha256 = "60ae1a08f5a05dfa517c2947af279f8350f55d359c588415952caf5c9849e597",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-windowsx86-64.zip",
        sha256 = "25fae192d22840be7ff320dc37e8abe1615c6b77bde3f4f9cf5fc2963c23f23b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-windowsx86-64static.zip",
        sha256 = "3f6d77035091e336571ff6b6980116a6a2aaaa41ba7f2766e1dfaec148ced0e4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxarm64.zip",
        sha256 = "2745defd2ac4ce999688952ee9371a0be7aaba66ca4e0792da5e2306e294179f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxarm64static.zip",
        sha256 = "2cb8bfa67843a5307508b6febd9da0dd2b3e4bbb1fbae3107a8e10241fee1563",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxx86-64.zip",
        sha256 = "46bbd6ab41de9fca3ba8e63d9ec99ce7cb48c34f8e2e803dd0e52be14e97b99c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxx86-64static.zip",
        sha256 = "6b1c4c5b3cdf3044bb8729aa833a3904b3985063371fd2587ad95ef532d07a7b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxathena.zip",
        sha256 = "6c300a7e426a3d4626ba2d58e918154796da392b50251932e7e6728c27af123a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxathenastatic.zip",
        sha256 = "2e04e956be8e5ab24c84f8ecdbc1d54ad6151daf5fb33344755547826a0561a2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxarm32.zip",
        sha256 = "93b3caf5e4d42613bcb3afa7fc68eb05fdceed7a099b0591d0ec8237a3b3b31e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-linuxarm32static.zip",
        sha256 = "a23640536680bbefbf792c9253e3569eabb0031880d95940bbc351984c01ebaa",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-osxuniversal.zip",
        sha256 = "99b26adeb37b444ea0c8ab2e044c5ffed3092f1b68dcb2094a66bd68ecd56751",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2023.1.2/REVLib-driver-2023.1.2-osxuniversalstatic.zip",
        sha256 = "e153520576f66e3926d6a566a696571ab5d1121b917235eac08be09f4cf64d3d",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_revlib-java",
        artifact = "com.revrobotics.frc:REVLib-java:2023.1.2",
        artifact_sha256 = "c1f8bbb5c2919d56b511da795beb06bcbcff503670adf51086df7dec46931f3f",
        server_urls = ["https://maven.revrobotics.com"],
    )
