load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_21_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.21.2/api-cpp-5.21.2-headers.zip",
        sha256 = "4a99db01ea4a03d673c4e461b63fafc06ffe255dc1b0887e460a919503e0854d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.2/api-cpp-sim-5.21.2-headers.zip",
        sha256 = "4a99db01ea4a03d673c4e461b63fafc06ffe255dc1b0887e460a919503e0854d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.21.2/cci-5.21.2-headers.zip",
        sha256 = "c315e1b830794d8230d4886097ca5f02a8f8138587a11ffef5138e221f05c5d7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.2/cci-sim-5.21.2-headers.zip",
        sha256 = "c315e1b830794d8230d4886097ca5f02a8f8138587a11ffef5138e221f05c5d7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.2/simCANCoder-5.21.2-headers.zip",
        sha256 = "0222cb7152d9ed9217e280110e43286a9f5614abcb7f2b558d29c342e4acdf95",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.2/simPigeonIMU-5.21.2-headers.zip",
        sha256 = "0222cb7152d9ed9217e280110e43286a9f5614abcb7f2b558d29c342e4acdf95",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.2/simTalonFX-5.21.2-headers.zip",
        sha256 = "0222cb7152d9ed9217e280110e43286a9f5614abcb7f2b558d29c342e4acdf95",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.2/simTalonSRX-5.21.2-headers.zip",
        sha256 = "0222cb7152d9ed9217e280110e43286a9f5614abcb7f2b558d29c342e4acdf95",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.2/simVictorSPX-5.21.2-headers.zip",
        sha256 = "0222cb7152d9ed9217e280110e43286a9f5614abcb7f2b558d29c342e4acdf95",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.21.2/wpiapi-cpp-5.21.2-headers.zip",
        sha256 = "734fccd95fa44666785f3a09193ace89a66039c78fce3760081aec495a8ecda5",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.2/wpiapi-cpp-sim-5.21.2-headers.zip",
        sha256 = "734fccd95fa44666785f3a09193ace89a66039c78fce3760081aec495a8ecda5",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.21.2/api-cpp-5.21.2-linuxathena.zip",
        sha256 = "5cbaead78dae9cf7a7318e01df5360e358191fc6c4778a060dcf1a29e336d8e3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.2/api-cpp-sim-5.21.2-windowsx86-64.zip",
        sha256 = "0b6460052f0eb59f0ea44c6a15d5c8e7e4d806d2bc20e0d4d925b65b002cb12c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.2/api-cpp-sim-5.21.2-linuxx86-64.zip",
        sha256 = "ba705896eac9e6d62176272f7c7e6f2d5bbd99fb326ce95d24a558bedae41083",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.2/api-cpp-sim-5.21.2-osxx86-64.zip",
        sha256 = "20b311a0bf5873aa72576a6781c736b0d63687637ef08f94c8e8106a4fb5efca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.21.2/cci-5.21.2-linuxathena.zip",
        sha256 = "5314856243163402b08f14a1b3f893a547de364b50682c78716dd0f1fcb4be2a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.2/cci-sim-5.21.2-windowsx86-64.zip",
        sha256 = "94e3fef31166ab37969574711d5345f5aa016e484d00c6dd52a9a0f32a920ba5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.2/cci-sim-5.21.2-linuxx86-64.zip",
        sha256 = "0f1d8e14cb4a192bfc97af3b46562e7f916d8e722d32cc3cea722343234d43fe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.2/cci-sim-5.21.2-osxx86-64.zip",
        sha256 = "dba68adf1ab2de523384cdd331aa9f9dab8684598e4603c41fc1ad4bec6fc8d0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.2/simCANCoder-5.21.2-windowsx86-64.zip",
        sha256 = "6b6b580dc38b834fd465b78107fb0fd7f912276fdc4a768a5560b15ae1885014",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.2/simCANCoder-5.21.2-linuxx86-64.zip",
        sha256 = "197e00d337138bca7778b1f2e4c9f33fbded35fe2ee133f38785c96d19ecbd92",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.2/simCANCoder-5.21.2-osxx86-64.zip",
        sha256 = "b78f0f6349cee43a03b2b6f1bcd1e0e8f34163f00271706d9e65431c27d104c4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.2/simPigeonIMU-5.21.2-windowsx86-64.zip",
        sha256 = "cfe2dc1454dfbf498840e9882442a7dcf1aea5b1a1c2a94d043b51897c040e8e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.2/simPigeonIMU-5.21.2-linuxx86-64.zip",
        sha256 = "ad9d9447a60beac27f12874e0f65fc4ba7d48c2456d2b730ab06a70ba8b23166",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.2/simPigeonIMU-5.21.2-osxx86-64.zip",
        sha256 = "dd88ff289bbc5e36454562929fb7a6f0a5510627505652d98418f5ed460810ad",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.2/simTalonFX-5.21.2-windowsx86-64.zip",
        sha256 = "bddc1883ae5bf1a131ed7ce5337bb4b8bf31479f2c99d8093f8338525cecf444",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.2/simTalonFX-5.21.2-linuxx86-64.zip",
        sha256 = "719316356b3f05dca865d29f4c5eaf81c01919ffe1a2ed5b9fe609a13e374023",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.2/simTalonFX-5.21.2-osxx86-64.zip",
        sha256 = "ba52704ffa119fb78af3b67d635fe2911c8ae4166632ea0711e6833e0ed5580e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.2/simTalonSRX-5.21.2-windowsx86-64.zip",
        sha256 = "5baf0d0d4a37b92311506c368d14a901de18e955c81534ebef8f160d9870f822",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.2/simTalonSRX-5.21.2-linuxx86-64.zip",
        sha256 = "c784600610097268d09d8ef274ef4918e45e324a4458b2b72fb817426439d173",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.2/simTalonSRX-5.21.2-osxx86-64.zip",
        sha256 = "b09e85a47ed6c5bb62d2e37e19d966ae3f8cc3a3f9a45393ec5ed38f9ad4d7ac",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.2/simVictorSPX-5.21.2-windowsx86-64.zip",
        sha256 = "e2c4a6bb85ffede013c8558d2407b66c82dc44e25651c0a00b6d363dcbcbe905",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.2/simVictorSPX-5.21.2-linuxx86-64.zip",
        sha256 = "0697edce901ab9ad82cba96233a40bb687c1c6c65dc1bf0f3c17ce2a27784bd6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.2/simVictorSPX-5.21.2-osxx86-64.zip",
        sha256 = "6fbb36014571f86e22304cbe06e52b8189643039bb2952bf285200788a653dc8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.21.2/wpiapi-cpp-5.21.2-linuxathena.zip",
        sha256 = "406c169e256ec39b38bbc4a90bb58262af2b8a626761313501d5c6a286a92b12",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.2/wpiapi-cpp-sim-5.21.2-windowsx86-64.zip",
        sha256 = "c1fae77f5305cdbc29aa7f185abb67ec3aad562e8794022386c28c59690d95aa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.2/wpiapi-cpp-sim-5.21.2-linuxx86-64.zip",
        sha256 = "a7fa685310c5081dedf7978d6e1fd1826928acaf66498feaa5362aff6952ff91",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.2/wpiapi-cpp-sim-5.21.2-osxx86-64.zip",
        sha256 = "383ec72051fe03c1851c197a77e1f5159e2d0e35bea8fe224f91ab1cee7a1793",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.21.2",
        artifact_sha256 = "518ce0937acef5df61ba7716c1137f9452d254565d5436658544b153dde02520",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.21.2",
        artifact_sha256 = "68d73f235ffa7c20febabcaac7f1e00df76b698876b0e2616ab060ae86e4678d",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
