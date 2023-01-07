load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_30_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.2/api-cpp-5.30.2-headers.zip",
        sha256 = "93cc41c53e98bbcd5db7b0631ab95a7de7744527d5847d2e795e6c8acec46bf8",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.2/api-cpp-sim-5.30.2-headers.zip",
        sha256 = "7b17c0a33e1ff38d16438e5e138358d68fcca33efa6b530652d7e607237d4197",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.2/cci-5.30.2-headers.zip",
        sha256 = "d41dd70aa4397cba934292e636c90511e571a56971f696348851fcd3bb88894d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.2/cci-sim-5.30.2-headers.zip",
        sha256 = "d41dd70aa4397cba934292e636c90511e571a56971f696348851fcd3bb88894d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.2/wpiapi-cpp-5.30.2-headers.zip",
        sha256 = "83287a7667b6941d6693d0c932f169d964bc6126c5b15f18a85ded3176ef77a3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.2/wpiapi-cpp-sim-5.30.2-headers.zip",
        sha256 = "13a873eb0d77eedbd7c258309a43bdd56eb5fe2e5c4c72661985af7fff2d4a19",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.2/api-cpp-5.30.2-windowsx86-64.zip",
        sha256 = "e8c24534dbceafa1fd1b401e23396b01736c6f8777a75a3580defa0a96220c9f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.2/api-cpp-5.30.2-linuxx86-64.zip",
        sha256 = "6ba54a9516048c79020e54a33064a73616fbe904e442cee79b523e7f84e4b5d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.2/api-cpp-5.30.2-linuxathena.zip",
        sha256 = "63889beeeaac8bbef2573d23f1a9500b6382d28ab91c78f3605b6b624c27d68e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.2/api-cpp-sim-5.30.2-windowsx86-64.zip",
        sha256 = "7af5f344d0df67d036fba9b69a63eace571afb669a386b10d169dc9eb60ee3e2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.2/api-cpp-sim-5.30.2-linuxx86-64.zip",
        sha256 = "bf39673654a37e4fa5270646a280f85307583756f0b79dea0e7d54c58a0707bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.2/api-cpp-sim-5.30.2-osxuniversal.zip",
        sha256 = "26d78e301fd13203683704d64f7f2147cec67c01c70a553ace555c04bc711183",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.2/cci-5.30.2-windowsx86-64.zip",
        sha256 = "144aa3921e2be84bf683c368a9e4cebbed6999fdce8f1d032f3715295ca083ea",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.2/cci-5.30.2-linuxx86-64.zip",
        sha256 = "838e07b764306f3f0ab3d5c6bc5f7852851ecb4661780a0b2831488d08af15ea",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.2/cci-5.30.2-linuxathena.zip",
        sha256 = "b01f78b74ffcf01f48636dca894942e801ec6eac3daadcea7d65c4b74a80a056",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.2/cci-sim-5.30.2-windowsx86-64.zip",
        sha256 = "e0b9167d3349f9748c39f8317fa353f737a53af183083e7cf59193a8ce53cb32",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.2/cci-sim-5.30.2-linuxx86-64.zip",
        sha256 = "e1240c84ece8d4e95d6349192c09527d025087e2039c3f7ad4f019ab6bbad797",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.2/cci-sim-5.30.2-osxuniversal.zip",
        sha256 = "352ecaa3575ef57b72adbddb359af439695fb19ee772df2830d7802e972a2921",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.2/wpiapi-cpp-5.30.2-windowsx86-64.zip",
        sha256 = "2356b2c33395467304122f38ebe74496f65aca73c99de100dcd00b94f711a192",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.2/wpiapi-cpp-5.30.2-linuxx86-64.zip",
        sha256 = "4bab7ddc7a30f2af760cf56e5e6d27ffa4bdfbb562f7ef6bb0580a6e96a26cb3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.2/wpiapi-cpp-5.30.2-linuxathena.zip",
        sha256 = "54b3afcc735f4846cf66125afe87d4ab59e34ee9ea133f641c73aef2ad279ce1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.2/wpiapi-cpp-sim-5.30.2-windowsx86-64.zip",
        sha256 = "2bd7d522f29a5dd4909eb7f7322298dedec13adadc2395b1d31330cfd1483c69",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.2/wpiapi-cpp-sim-5.30.2-linuxx86-64.zip",
        sha256 = "c984b202943dbd89826a1c463a4354d6af8c520a5d632726c85fe522d9e2a1d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.2/wpiapi-cpp-sim-5.30.2-osxuniversal.zip",
        sha256 = "e364dd590552982a25a73b6d45c807a025da6119f863e373c0ac52a9d2ecda84",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.30.2",
        artifact_sha256 = "38af6bc0334d4d6b5ecbc88232be26fe9862e03e52c8c75e83bd39a2ddbdbcf0",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.30.2",
        artifact_sha256 = "3cd30db480cc5cf60067ae7b91496bea48a012d9836389508a63f5b79804fa8e",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
