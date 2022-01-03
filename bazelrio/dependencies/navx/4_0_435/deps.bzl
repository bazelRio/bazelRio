load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//dependencies/navx:deps_util.bzl", "navx_source_build")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_navx_4_0_435_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.435/navx-cpp-4.0.435-headers.zip",
        sha256 = "6a2dc0d1a4a93a8a4fe114620925a2860b22fd76f0da8ce3ff7a156edd06ecbb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathena",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.435/navx-cpp-4.0.435-linuxathena.zip",
        sha256 = "ef09455116c700299300752880214191caadf7d356c8ac347a34edff781659ed",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathenastatic",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.435/navx-cpp-4.0.435-linuxathenastatic.zip",
        sha256 = "56f419411cc99b4558b0319a2437ac5166571ace8e7af1189e2158ed2a1c4ea3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_sources",
        sha256 = "194a2a7ff2313c53700698eb1f092111fa4cf21f151a9c3538dd224f09ce814c",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.435/navx-cpp-4.0.435-sources.zip",
        build_file_content = navx_source_build,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.435/navx-cpp-4.0.435-windowsx86-64.zip",
        sha256 = "2fc07613a22e07b05162cd545d448b512f639ebfea367ac1ecdd64d6e94ed374",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64static",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.435/navx-cpp-4.0.435-windowsx86-64static.zip",
        sha256 = "503b7bf665f6b57e2532d9a1971d3fe856a66bd0dfd16a0599b91c5b6d4cc449",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-java",
        artifact = "com.kauailabs.navx.frc:navx-java:4.0.435",
        artifact_sha256 = "1e236ffef47740c2aef5ef2ee32209d3fde2eb4b96b8b38de0e9d5bd25007311",
        server_urls = ["https://repo1.maven.org/maven2"],
    )
