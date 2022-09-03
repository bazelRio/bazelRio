load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_navx_4_0_447_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-headers.zip",
        sha256 = "f1157a88ed0db1490f466eaf721a5b1f74cc96c1260e01002a892f698a1663ae",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_sources",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-sources.zip",
        sha256 = "11e498c4ed23b462cfb88d84829e41fc97e8bcd5946f72716ca5c514f515b092",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathena",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-linuxathena.zip",
        sha256 = "037a9a6a7dcfbae733a8a5e680478a1cc05493fa0e306f6644ddaf982aa835f5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathenastatic",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-linuxathenastatic.zip",
        sha256 = "65d1be6609a47d742ab48106b78d054f7c161dcc1b4e3d6d5429c21ed8ec5ef7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-windowsx86-64.zip",
        sha256 = "f9b6f9d9e5ab829ea3765b13c0cd4c7e85e6566a68784803d61b8ef0907b8a9f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_windowsx86-64static",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.447/navx-cpp-4.0.447-windowsx86-64static.zip",
        sha256 = "e9e0f42e9bab3794a6fae8031be11472515f852a8623998ba9eb8ee93b18c93f",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-java",
        artifact = "com.kauailabs.navx.frc:navx-java:4.0.447",
        artifact_sha256 = "fb5a8b4dd5f60725af6a1f9ce1236c10ad4227ab1f1ea6d854e88d6973590a8e",
        server_urls = ["https://repo1.maven.org/maven2"],
    )
