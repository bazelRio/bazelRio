load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//dependencies/navx:deps_util.bzl", "navx_source_build")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_navx_4_0_425_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-headers.zip",
        sha256 = "6482edc027dff06570e81747ff87aa8369b302122c38530b0cab0d2c11e83f80",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathena",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-linuxathena.zip",
        sha256 = "6acf09ae05fe95b11c24370c4cc6a95f0feb65097f25e5c7e39b5d21b775d519",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathenastatic",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-linuxathenastatic.zip",
        sha256 = "a194cc44434733494cb92cd6d7f557b46bf6a4934e3381f2884f010481b4e263",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_sources",
        sha256 = "3becd28b6385184c574cd343aad73e70c2188292a242cac4610bc2f6c3c48ab2",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-sources.zip",
        build_file_content = navx_source_build,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-windowsx86-64.zip",
        sha256 = "616eaa091bfc0e7d954b92c47f26b496f46228fc7a24221beb6d5b7bd584cd2c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64static",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-windowsx86-64static.zip",
        sha256 = "8fd6e0c9a6aec8e67451e4f3a5ace597def6c6e60d3f6d51dcc403f04a8a4d3d",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-java",
        artifact = "com.kauailabs.navx.frc:navx-java:4.0.425",
        artifact_sha256 = "e7063e6ae04c7f5b1f55455b1fe534ee155fce7bf22adec462f24d516298330d",
        server_urls = ["https://repo1.maven.org/maven2"],
    )
