load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_revlib_2022_1_0_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-headers.zip",
        sha256 = "f21d4a0fbdfc3cf127a7f8664bdb9ce43183285ed9353426660faf394648a5c7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-headers.zip",
        sha256 = "34206a0e8e7dfd782784eb68a36bd8a9b87d586c9b7fadb06f5a75faa61af288",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-windowsx86-64.zip",
        sha256 = "70566c4d51a0f7a417b59e640251f16378094805a3daedeeb41e7ce0ad9c4e10",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-windowsx86-64static.zip",
        sha256 = "caa7a5c68beee46f46e3bf229cbdf7751b13e21c8aec641fe7dbc61074961db3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-linuxx86-64.zip",
        sha256 = "d59a4527bc25d84186f0d41d69be0484a29d5c105fc8ff5e60beea0538854edd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-linuxx86-64static.zip",
        sha256 = "7b44ba7ff66a2c283b5fdbb06fff6e667dd2099d73d79442fd64136a1abd7889",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-linuxathena.zip",
        sha256 = "97494b52c18de8170fac449f579ed022c67ad361c3966b2eeb8153485815a234",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-linuxathenastatic.zip",
        sha256 = "16add9024cd60baddda69b52cc3bc8fb062a70ee2866330a86415e087d0cc266",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-osxx86-64.zip",
        sha256 = "46db303a9edce305420f0b30c86863d36535ffc4b4efd39f26ba905c60f5b83f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2022.1.0/REVLib-cpp-2022.1.0-osxx86-64static.zip",
        sha256 = "5cd88ccd45d3de4b3a6fed1315989342cf1dc5dfe97f64e12351f6e8dc882251",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-windowsx86-64.zip",
        sha256 = "e34b3478dbbf735cac3b5bf380ea009b9cb434f8807e1f889ec5e3f5be464239",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-windowsx86-64static.zip",
        sha256 = "501a0e62bf49c3a318e9c35d96e091b5da6026ba111190e5a33895949d3968fe",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-linuxx86-64.zip",
        sha256 = "1d5e25a6391e26e658f5d92f90a57d8cf2f54e4529926c16453c91ca5447c2ad",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-linuxx86-64static.zip",
        sha256 = "0c373cb787cdd68e7471a464efbeb5112470abfed5bc4ddc5039b48387f0a408",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-linuxathena.zip",
        sha256 = "ffd25a01abcced33685bf37b4f0e8b02bd9b9de96f988328793ddc71313a502f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-linuxathenastatic.zip",
        sha256 = "01fb41380fe87b53868974b752c89c3d895f2a4f206dc4a220ae9704df8cf06d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-osxx86-64.zip",
        sha256 = "f5d26a4f962f4c5935efd98ada3602bffd1ff317085c99949fbc686746a437fc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2022.1.0/REVLib-driver-2022.1.0-osxx86-64static.zip",
        sha256 = "59685c6ad2e2b849898b556f19d8018f5fcf166626c20788304824a931a2a12d",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_revlib-java",
        artifact = "com.revrobotics.frc:REVLib-java:2022.1.0",
        artifact_sha256 = "fae2e0d0fa7e70512c3373f963b8f69f37faf97979528e94e3520b21eb6d1026",
        server_urls = ["https://maven.revrobotics.com"],
    )
