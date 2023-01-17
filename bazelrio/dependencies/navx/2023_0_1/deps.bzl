load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_navx_2023_0_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-headers.zip",
        sha256 = "306be67e736de2f85dc922f43f1ec34752767cf905befe2eb7cde680bbaabecb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-sources.zip",
        sha256 = "18a4fb8f2a14787f64bb33c1ed5be10bb5c4be72e7c607faa3bb709851c251a5",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-linuxathena.zip",
        sha256 = "8acf40c76f2440711b25b0762eec0008f2b8810ae4a9423c3c1ca57685ac6585",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-linuxathenastatic.zip",
        sha256 = "4992c6a33d135b214c73fac3c9e7b7cb24c2d5e3a450c5b353332664190e34c7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-windowsx86-64.zip",
        sha256 = "780db9926254ea8263f539ca326ea38af935eb39d590c74ddeabd18edd5148d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.1/navx-frc-cpp-2023.0.1-windowsx86-64static.zip",
        sha256 = "5459d899a97f57a64834d1cfce6e5ef900a80921f17f68d220cf12e18787bcd4",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-frc-java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2023.0.1",
        artifact_sha256 = "f704e31153cbf87acd5ee20f7f764e14c5abef74bcdb5e810597c3c9629fb0ca",
        server_urls = ["https://dev.studica.com/maven/release/2023"],
    )
