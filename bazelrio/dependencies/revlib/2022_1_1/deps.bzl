load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_revlib_2022_1_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-headers.zip",
        sha256 = "5faac520706077f04e051c18530a4e4f5f0bf3539c9c8505e311d7cc67b3605f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-headers.zip",
        sha256 = "2732ce8fdda8474070d707fab900b4d8b4f4a69933c086bc843bf14e513790b3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "73b48cc65c2c483ad7e66feea25366ce09beae3b43b9f45c3c9eaa1c484e6344",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "61a1f94a57cbcc2f91553c6ebc251659507fb620d67595ee3b0e9ed5cfc18b2c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "ad4bfce80862374141e46222ddf53bfa864c25c688daeb19ff9ce13ebb95b35d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "c5de1ddd874f23d2fca5ecd5ed6769236a0d981ab3295c8610a25436f5ae6162",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-linuxathena.zip",
        sha256 = "805217edaeb5a7569ef7a6726d49b2f73c9db5ea1dd81afe9b312b20afd2f471",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "098ffee0622590a6b3e9bdd27b1b8d5a713634c65616876b5e89d55b4f1af7f6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "bcfd5e3bb41411c38f5356dbfc18b8654e5e3434cb32741d1e83fab66bcf1460",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.1/REVLib-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "34597bb5500767b2faa2fc9b747b4446d49f80244a555f40943a5efdd2bb1479",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-windowsx86-64.zip",
        sha256 = "2ce8117dd960f828a59061126e8d7e846059d07dd1516c5842835e1d7c283b57",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-windowsx86-64static.zip",
        sha256 = "005b2120549a094d5b75e18e9d08c25d46f2ec7fc6eed27072393e3c3941b8dc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-linuxx86-64.zip",
        sha256 = "dca845e6d0abe8e44130d2839301d2715d0357a77d77bb6625350a3d0924450c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-linuxx86-64static.zip",
        sha256 = "07aea66789f75e4139e0feed96422e9d8adce45b70478636331e78bd0abdae48",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-linuxathena.zip",
        sha256 = "db61c0bc9a901bbc17162277b800ea1312f6591d9373be69fc1c46653e33f8e6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-linuxathenastatic.zip",
        sha256 = "7e2e0e296e5988c19530efda1956ed48d599e848620a8b683fd93f4f7290c138",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-osxx86-64.zip",
        sha256 = "68207a3528004381f5a89caa70bcc8224c0b572ef1dc382746317b79f66fb1f8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.1/REVLib-driver-2022.1.1-osxx86-64static.zip",
        sha256 = "b60d879bd680790c9177694442abd915da1656c35021e89c7baa5093876f3215",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_revlib-java",
        artifact = "com.revrobotics.frc:REVLib-java:2022.1.1",
        artifact_sha256 = "7806c05b3a129dc8a2fa4e9aca687332a21184b31a48052989d3abacd4aff52f",
        server_urls = ["https://maven.revrobotics.com"],
    )
