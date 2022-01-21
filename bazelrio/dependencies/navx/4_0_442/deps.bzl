load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_navx_4_0_442_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.442/navx-cpp-4.0.442-headers.zip",
        sha256 = "6a2dc0d1a4a93a8a4fe114620925a2860b22fd76f0da8ce3ff7a156edd06ecbb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_sources",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.442/navx-cpp-4.0.442-sources.zip",
        sha256 = "49196c9fb179072d838509c580ec7204d46e3b1f6528950751b438bdd3ecd534",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathena",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.442/navx-cpp-4.0.442-linuxathena.zip",
        sha256 = "b609ff0bcff21a1cd452f56a8102c573bf8bb5ba1c06d3e44f8679855b60dd27",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathenastatic",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.442/navx-cpp-4.0.442-linuxathenastatic.zip",
        sha256 = "c8212cd4ec1680877d9c3713e56355fb3f86e86699cffda432e4ba4dfc276801",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.442/navx-cpp-4.0.442-windowsx86-64.zip",
        sha256 = "1e23036407f2d3fc3d37a5e5f5326e1734814134bcd79bbc5b2b3d4365134df1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64static",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.442/navx-cpp-4.0.442-windowsx86-64static.zip",
        sha256 = "73d76b13e788f8c4adf8cbbcc42c878897cebcb030ff795ea498c9f87352b52d",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-java",
        artifact = "com.kauailabs.navx.frc:navx-java:4.0.442",
        artifact_sha256 = "fc6007e2ae048861db8b7050bac494f2c944a4803e2cf1d4b43ea0f953418563",
        server_urls = ["https://repo1.maven.org/maven2"],
    )
