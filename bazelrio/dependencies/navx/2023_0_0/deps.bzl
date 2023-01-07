load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_navx_2023_0_0_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.0/navx-frc-cpp-2023.0.0-headers.zip",
        sha256 = "306be67e736de2f85dc922f43f1ec34752767cf905befe2eb7cde680bbaabecb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.0/navx-frc-cpp-2023.0.0-sources.zip",
        sha256 = "18a4fb8f2a14787f64bb33c1ed5be10bb5c4be72e7c607faa3bb709851c251a5",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.0/navx-frc-cpp-2023.0.0-linuxathena.zip",
        sha256 = "9bf18497ca9d41311079412906612400f363adf9605fc5a3b753868ece08765e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.0/navx-frc-cpp-2023.0.0-linuxathenastatic.zip",
        sha256 = "2e5ce6a6beef63548bb4ac919d16bce9d2740e22c12f7f6b57a82534b31cc251",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.0/navx-frc-cpp-2023.0.0-windowsx86-64.zip",
        sha256 = "af8d93c57642d899d1ca075ea91c61e30f505d4d2bd21f26009e0cfd58054e0e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.0/navx-frc-cpp-2023.0.0-windowsx86-64static.zip",
        sha256 = "6acd08418d3bd4ef898300d806d3db6e3ab51340ab0e2a0042489747118cf625",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-frc-java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2023.0.0",
        artifact_sha256 = "f704e31153cbf87acd5ee20f7f764e14c5abef74bcdb5e810597c3c9629fb0ca",
        server_urls = ["https://dev.studica.com/maven/release/2023"],
    )
