load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_navx_2023_0_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-headers.zip",
        sha256 = "2b14eaa1df96dc749453e69807b01734e8674311ba63b430d772312ce507b4d5",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-sources.zip",
        sha256 = "c8a8031ad787da493c989dfc5af8381f7c0a7fb2b8c6bad52e4c699215c2da7a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxathena.zip",
        sha256 = "2ce10dc27c331e55b3bb3210f1b5cc2f0c24609c5a2e3ffd793a5e625c2c4feb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxathenastatic.zip",
        sha256 = "d9de721680aefcdb09dc0bf38de7884673d5c2490e232b988bb4b088085327d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm32.zip",
        sha256 = "de5e582a9e1bf34cb8f16ad69cb7363565ef0179e3b54d80bbea7c8924aded27",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm32static.zip",
        sha256 = "260e29b9db922a619bda51777cd1877ee455072f59ca04a8ce90195e5c205354",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm64.zip",
        sha256 = "a190f674ca19f3ededca2aa611431c4459153696ed4977a22f7dd5fbaee665c3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-linuxarm64static.zip",
        sha256 = "d8ecdc1652eee0583594b64cbe89c373465daf85e197906e13484d2ae1d75a26",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-osxuniversal.zip",
        sha256 = "7c4fb66b9c0075c45931c5ebbcebf0b56e4eaa52f1bfedbc10ad50bf9ee897dc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-osxuniversalstatic.zip",
        sha256 = "9cc9907daccdd7f8d4797b34debb1e5f4ae372fa1a9faf875500a52e6f11ffe6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-windowsx86-64.zip",
        sha256 = "3e5007c5f5130943177fff8aea93d240fd06eae4758de89f451d9bc925c88431",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2023/com/kauailabs/navx/frc/navx-frc-cpp/2023.0.3/navx-frc-cpp-2023.0.3-windowsx86-64static.zip",
        sha256 = "a2bb81741c5a5eebebc2b32d29f5aabfafa6599fab3c11de43712f761af447da",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-frc-java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2023.0.3",
        artifact_sha256 = "51a99f1e58400716329db0a6d3114f5ebd637c9db6bc50d2cd12d6b895303f7b",
        server_urls = ["https://dev.studica.com/maven/release/2023"],
    )
