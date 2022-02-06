load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_21_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.21.1/api-cpp-5.21.1-headers.zip",
        sha256 = "ea4131d1809bc8ccbd72b15cc7a65bd6ebb89a65019afc6a336e2c92d91ec824",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.1/api-cpp-sim-5.21.1-headers.zip",
        sha256 = "ea4131d1809bc8ccbd72b15cc7a65bd6ebb89a65019afc6a336e2c92d91ec824",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.21.1/cci-5.21.1-headers.zip",
        sha256 = "b3332885c6afe082f9f67c2335086e89f705b6ac6c5101188616f81c58d3e49a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.1/cci-sim-5.21.1-headers.zip",
        sha256 = "b3332885c6afe082f9f67c2335086e89f705b6ac6c5101188616f81c58d3e49a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.1/simCANCoder-5.21.1-headers.zip",
        sha256 = "1387a41efba042e7e98d4c09ddd69b8abe55015c45f1bd80cbebfa2bcd933797",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.1/simPigeonIMU-5.21.1-headers.zip",
        sha256 = "1387a41efba042e7e98d4c09ddd69b8abe55015c45f1bd80cbebfa2bcd933797",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.1/simTalonFX-5.21.1-headers.zip",
        sha256 = "1387a41efba042e7e98d4c09ddd69b8abe55015c45f1bd80cbebfa2bcd933797",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.1/simTalonSRX-5.21.1-headers.zip",
        sha256 = "1387a41efba042e7e98d4c09ddd69b8abe55015c45f1bd80cbebfa2bcd933797",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.1/simVictorSPX-5.21.1-headers.zip",
        sha256 = "1387a41efba042e7e98d4c09ddd69b8abe55015c45f1bd80cbebfa2bcd933797",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.21.1/wpiapi-cpp-5.21.1-headers.zip",
        sha256 = "1062618f91eb151caf93f75245c911442dbe04f45c918185947197695d00785c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.1/wpiapi-cpp-sim-5.21.1-headers.zip",
        sha256 = "1062618f91eb151caf93f75245c911442dbe04f45c918185947197695d00785c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.21.1/api-cpp-5.21.1-linuxathena.zip",
        sha256 = "328130012a0fc1050c3ff09f30a2adf5106d15accc3d850b744fa60ec635a462",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.1/api-cpp-sim-5.21.1-windowsx86-64.zip",
        sha256 = "93330872d21c5c1a081aca4869a39fe976517904692a321c778fb4ed29e6fd88",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.1/api-cpp-sim-5.21.1-linuxx86-64.zip",
        sha256 = "0fa2e239e5045267f6b1b39f55a46bf7e5e416bd5be8477c32a9809d5b1eb0a1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.1/api-cpp-sim-5.21.1-osxx86-64.zip",
        sha256 = "5550e0c472afed4fa1afedc8536125a24483c0846a0086ffcb2b7c76b6f38bbe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.21.1/cci-5.21.1-linuxathena.zip",
        sha256 = "94812541734d7905774d97e10a97e9c79b5c37cba60d9b6b2d6e4bf3bbabc2fb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.1/cci-sim-5.21.1-windowsx86-64.zip",
        sha256 = "63c0b3fca7c672634a91f51b13004e60b07251970a25ea2980e040aad5fb5325",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.1/cci-sim-5.21.1-linuxx86-64.zip",
        sha256 = "fd5d6d5128aab9ec66a35bcd2ff25ac34d15e278f680f7c9b95d7fd9c0facba7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.1/cci-sim-5.21.1-osxx86-64.zip",
        sha256 = "5fcb621220348a846497bcbe3b30022e07d2bced8df01e01ac58f6b0feae22fc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.1/simCANCoder-5.21.1-windowsx86-64.zip",
        sha256 = "6081f85fba26a0c9e0d82340da740ac978d99b892c6438ed84d7c0a98a0b6986",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.1/simCANCoder-5.21.1-linuxx86-64.zip",
        sha256 = "3232ffb66a45c4eec30538359c178d698cb269946edda1ab772c6932d84b4632",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.1/simCANCoder-5.21.1-osxx86-64.zip",
        sha256 = "cf56baa14f521967bad02e515ac6e7adc518e11c4e5e08634ff22734fa81a966",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.1/simPigeonIMU-5.21.1-windowsx86-64.zip",
        sha256 = "38808f8c857165ba671ed86ddb2650e7baa7e8715436d2f707749e64e555fc97",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.1/simPigeonIMU-5.21.1-linuxx86-64.zip",
        sha256 = "f59a1435941777d92c714a4b67e6c3c062adab5285bd22f5c8d03e59eb88fe57",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.1/simPigeonIMU-5.21.1-osxx86-64.zip",
        sha256 = "350a5fc86f5eb43ee7a45ada6d1b4e74a09f0e291de00c008e068fd8149b7315",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.1/simTalonFX-5.21.1-windowsx86-64.zip",
        sha256 = "4a3aaa32acbaef7e6df5d41496d101570df7c457675fbe5302d065507c4a45a9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.1/simTalonFX-5.21.1-linuxx86-64.zip",
        sha256 = "3ea425ebfe7d3d10ad9503636e9c38a75c0f2d7fe28cbeac0e58f5816eab5b2e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.1/simTalonFX-5.21.1-osxx86-64.zip",
        sha256 = "bf9b967fb30a04656d5b94badca1258a205ac7e6e39fb6580be6f422283c6813",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.1/simTalonSRX-5.21.1-windowsx86-64.zip",
        sha256 = "4e2c7c5567bf1e8e4822f76ded40b8845938263441130c7d702796788bd6fe7a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.1/simTalonSRX-5.21.1-linuxx86-64.zip",
        sha256 = "19b8a7d610edb735c332ec782dddbc545948eb8190438bea32deaa405eaf3852",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.1/simTalonSRX-5.21.1-osxx86-64.zip",
        sha256 = "b177dfc016a432ec0238baec575ecfc45641e1421be6e6ed5e8a17746b0d2d3b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.1/simVictorSPX-5.21.1-windowsx86-64.zip",
        sha256 = "35da2510ad0a027aa6144e9d23c7561c724e302296e266f74f26e2ebe02066e6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.1/simVictorSPX-5.21.1-linuxx86-64.zip",
        sha256 = "5648b41ecaf9b933a92a972bddbecc45842860217be1fc8dc6f2071792de4a9c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.1/simVictorSPX-5.21.1-osxx86-64.zip",
        sha256 = "c1b2d46a9f30fb08d7b95563e112e357d52d82246695d76a06fa2385db7a3fce",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.21.1/wpiapi-cpp-5.21.1-linuxathena.zip",
        sha256 = "9667040193e870d85b8202da903187f6a09aaeba6f37d7b3c9de087d95428b9e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.1/wpiapi-cpp-sim-5.21.1-windowsx86-64.zip",
        sha256 = "b92f2d83c76a5984a02f5219cc1925322bfe3f81fad93fd06ea07de86ce9104c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.1/wpiapi-cpp-sim-5.21.1-linuxx86-64.zip",
        sha256 = "e617dfbcf41701c633bb6a19640312ced1fda84d13975be5be981c8bfedba6d8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.1/wpiapi-cpp-sim-5.21.1-osxx86-64.zip",
        sha256 = "f531cd3f8478ca9f8eea8f74edd4c86b4d6e21161f64aa40624f7b9cfd696cfa",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.21.1",
        artifact_sha256 = "50a7f20419c8abc2554ec763ee85a0653e269068b730175d0d8802681a4c509e",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.21.1",
        artifact_sha256 = "e0f04fe5aee2c580643d0468245d9cd29d729d2edc08aef42eb06e4bf04b9700",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
