load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_30_3_23_0_4_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-headers.zip",
        sha256 = "bbf59aca82c4bb136011dbd30ea5478109de3ec7b5cd8eb41a6b6f819516dead",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-headers.zip",
        sha256 = "3f443b2978d393dc818df1799173a0639ba54fd9f40df5cdf17b87c5c113301b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-headers.zip",
        sha256 = "89307ef60c0a1504ab6dec7710549fe6ee0980177defa3f23fd3825f1348ec32",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-headers.zip",
        sha256 = "89307ef60c0a1504ab6dec7710549fe6ee0980177defa3f23fd3825f1348ec32",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.4/simCANCoder-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.4/simPigeonIMU-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.4/simProCANcoder-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.4/simProPigeon2-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.4/simProTalonFX-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.4/simTalonFX-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.4/simTalonSRX-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.4/simVictorSPX-23.0.4-headers.zip",
        sha256 = "6d3868fb86e8febb0a0a6de9b5f8f1804878d96719957927303823bee5e542ca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.4/tools-23.0.4-headers.zip",
        sha256 = "59f6efd8e8dbdd58564f07874d9d44110bcace0f6559bf5951255da19e280f1d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.4/tools-sim-23.0.4-headers.zip",
        sha256 = "59f6efd8e8dbdd58564f07874d9d44110bcace0f6559bf5951255da19e280f1d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-headers.zip",
        sha256 = "ebc69d4b1f1f868dcb0ac297cffdb270a42f6293b5239e2b044d69140a3133fa",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-headers.zip",
        sha256 = "53bf4769a89ab04f2b0414f3d9756cd2467d1726b42891d89bd02c671237723b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-windowsx86-64.zip",
        sha256 = "148da705853d2b89bc3b0fe727ac4e5ad895864bc385dff72976b15f5cd6891d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-linuxx86-64.zip",
        sha256 = "d89c0aec08d0433f1f1e4488945948ea18882d7988f00ce8f7842d6f88f5cf55",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-linuxathena.zip",
        sha256 = "518a69563e306b0dbe555ae5bf7040301345474a78b4910bba881238f4cbadff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-windowsx86-64.zip",
        sha256 = "52001726eded0e25935f306249ae1eeb3e3bc991de6b6fd85c910666d5abc2a8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-linuxx86-64.zip",
        sha256 = "0c33bac3e345dc1aad5ebc3371c4a4ed27d428fbd44a0195331db90ecec5a45a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-osxuniversal.zip",
        sha256 = "f050957758306c2a498dfdfd3d52435a2f9c2ad85a33419ae2b48080cdafa557",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-windowsx86-64.zip",
        sha256 = "7154de07b39c22822f4a09ad6d257da971b0402817a71df0cd1189c557a2d5d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-linuxx86-64.zip",
        sha256 = "998cdd33f9d07163066792684946fedfa2703f8e974b01886567536155fc672b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-linuxathena.zip",
        sha256 = "b74b3f96fd208389c822d2d04d65da1b3948287996ff45e1cbe852043291c13a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-windowsx86-64.zip",
        sha256 = "6dfc0c6a064926d5e2d827bd8f80f697a8da86f12b0023d279049a408da8930a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-linuxx86-64.zip",
        sha256 = "5c3d4f41a40d02346419bfc25c4f5dd656252516fbd577ee1f6a2936884aeb18",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-osxuniversal.zip",
        sha256 = "6e5156a627865f378ef0b4fcb2af52af8049f0be64a773f4463e15471be5c917",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.4/simCANCoder-23.0.4-windowsx86-64.zip",
        sha256 = "aae44e212bd31e4b752dd8e062b25462da2ed491206bbf8c0e295393ef8c2219",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.4/simCANCoder-23.0.4-linuxx86-64.zip",
        sha256 = "beb50206d2fbdde69dc69f1e8d44d46ed23cc54ec853aeb25fba32e743f9e5bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.4/simCANCoder-23.0.4-osxuniversal.zip",
        sha256 = "cf32aa4c6420ae4e5b042f6ea1f5e281fba7740b1e05c46b470877d04d95a309",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.4/simPigeonIMU-23.0.4-windowsx86-64.zip",
        sha256 = "a1d5f137d1f8906f600deb008055db279446f7819d7e32bd36bc8de4af63214e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.4/simPigeonIMU-23.0.4-linuxx86-64.zip",
        sha256 = "17ebd7499199d2e18db18efbe8b24f1cacf001ce40be6175cc9839e257ff1088",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.4/simPigeonIMU-23.0.4-osxuniversal.zip",
        sha256 = "6db959fd27dc104f4baebf0ee20ae15c91a9142d4100a4a7a1ae848392814cf0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.4/simProCANcoder-23.0.4-windowsx86-64.zip",
        sha256 = "f2151eb92b52f3ed05f8d6b363145611042a715f7ab05bb6631399c25e0be37a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.4/simProCANcoder-23.0.4-linuxx86-64.zip",
        sha256 = "f4dd7fc89ced96c287ccb8bddbb9fc4cc2f600aaea5892f5edec7b8076fe9e7f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.4/simProCANcoder-23.0.4-osxuniversal.zip",
        sha256 = "d634d8a313aa89182dbb29d7c92955032adb1eab9144544019e0446330d9252a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.4/simProPigeon2-23.0.4-windowsx86-64.zip",
        sha256 = "9632bc275d767a354c20184c75cb27dafd65921bdbba4b7138a736435238899c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.4/simProPigeon2-23.0.4-linuxx86-64.zip",
        sha256 = "0e7f4fb491955c734e586a8b34c89d906d255ce75f5a45f6482e8e7cbbabb79e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.4/simProPigeon2-23.0.4-osxuniversal.zip",
        sha256 = "869c9d928b8c30c12f0b98d4d61643454a837acadc5a5d116011f7e1946a76ff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.4/simProTalonFX-23.0.4-windowsx86-64.zip",
        sha256 = "63e4d8c28024efce8c83663de3310060fb9f6f2777eb1e315d7e8db81291d88d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.4/simProTalonFX-23.0.4-linuxx86-64.zip",
        sha256 = "e5af2fe09328bdc7ce09b0b99e3c3997f3d2bb49ec594226a623d0c7c3e03d29",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.4/simProTalonFX-23.0.4-osxuniversal.zip",
        sha256 = "f22af94a815e0ea2b5baffab66069153bea0f032965d185694606802d4e53ddc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.4/simTalonFX-23.0.4-windowsx86-64.zip",
        sha256 = "d36abd87cf1e3193b8a807aa7dbce303c1ded33e97637f56ff520198d15fc092",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.4/simTalonFX-23.0.4-linuxx86-64.zip",
        sha256 = "1ecec5c738bcfe85afe0a466fac62af1c8a8ab0cb85c412c2aa36c039721d079",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.4/simTalonFX-23.0.4-osxuniversal.zip",
        sha256 = "45fb31971fd7b4ad7444373e875acca5a9fa681906fd87915efc01d623557421",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.4/simTalonSRX-23.0.4-windowsx86-64.zip",
        sha256 = "3913f01d9c10e29685c0e3bf4991663d4d3679e20c9bc8972e502b31c6504132",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.4/simTalonSRX-23.0.4-linuxx86-64.zip",
        sha256 = "722a4b782e357f3e90a9412c188e523731d01d6b0d59f6edd340487cd01a8183",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.4/simTalonSRX-23.0.4-osxuniversal.zip",
        sha256 = "4fb8d79ec48e0d78a5417913f7cf8edd679cfa7ea3f413233786da4054f224c0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.4/simVictorSPX-23.0.4-windowsx86-64.zip",
        sha256 = "b9a282dffeef6ea46e2e98bd2720ea09d60c9ff36b2b51a7d8ca2ff7139e541c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.4/simVictorSPX-23.0.4-linuxx86-64.zip",
        sha256 = "814839361dddbd9ddff634f11342a1123d933dcdb6b278e9aebf7d8482d5fa4b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.4/simVictorSPX-23.0.4-osxuniversal.zip",
        sha256 = "e854df62ac1f74bbbcef4597142b27b04bca7953121bf35aedfb1a1fddd01c2b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.4/tools-23.0.4-windowsx86-64.zip",
        sha256 = "0e1a31c4476ceebff4715157a1017a34e95321f6ce7fcfa98d9c602a2d56a9ce",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.4/tools-23.0.4-linuxx86-64.zip",
        sha256 = "f6bd6f21cf587d82dd32cac02117ba809e0947b8e5a26c16815c911e0d693e1a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.4/tools-23.0.4-linuxathena.zip",
        sha256 = "f519ef8c2f44176d457e39267d7169b0e99cb4e19708e35da2ed9062daf3cfb6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.4/tools-sim-23.0.4-windowsx86-64.zip",
        sha256 = "e09aa800fb6926b437a6dc86738fd38920f8cbcde081fe9b6177932b0971c009",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.4/tools-sim-23.0.4-linuxx86-64.zip",
        sha256 = "bd41d3e2d7211bd452f0a88daa9d2d80788bcc63e34c66bf3a5724f328032b7f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.4/tools-sim-23.0.4-osxuniversal.zip",
        sha256 = "2d039dec3d18f788602522fc7dc9a705474caf4eb921ffe287fba1a1f9710c89",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-windowsx86-64.zip",
        sha256 = "3583028bfd8fb47c3a74b1a70faaeb086bc463defa3d74c46979897f0d6f3ace",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-linuxx86-64.zip",
        sha256 = "885f56af7a3cab1394d3e5b4bb483d64e0304fe3507ebb64de9e74cb020ec726",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-linuxathena.zip",
        sha256 = "132e88ddff5cf12e4d46c6c6106847792842470e6d963f16fd286031c8312de4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-windowsx86-64.zip",
        sha256 = "3c5baf3707bc570191b93149eb409bf1448db7670ce516ef260bcd446b459fd8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-linuxx86-64.zip",
        sha256 = "baa1b378fabfa80bd1caf951298e88ffc7adcc21ad5f18ac8d3d5a691c72cbca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-osxuniversal.zip",
        sha256 = "a269eea3f7f212656c7b2dc11b3a1274a6e290c60735cd92d6aa8436707a1a00",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.30.3",
        artifact_sha256 = "123c5254cd19320def5d12e13bbe08da041a9bc50ad4d49dcb3d414762c72f85",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.30.3",
        artifact_sha256 = "419076bb97b2fbeaaea396903cca472403847e11bcf3f0bd769bc479b2cf575e",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
