load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenixpro_23_0_4_dependencies():
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
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.4/wpiapi-cpp-23.0.4-headers.zip",
        sha256 = "c08e1ddb06bc2d81a0e8e4940009785bc9b649bc63541e35b54663d1e29e5843",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.4/wpiapi-cpp-sim-23.0.4-headers.zip",
        sha256 = "c08e1ddb06bc2d81a0e8e4940009785bc9b649bc63541e35b54663d1e29e5843",
        build_file_content = cc_library_headers,
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
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.4/wpiapi-cpp-23.0.4-windowsx86-64.zip",
        sha256 = "047a0d9c697ee7bec30edd437e107a18af3c27353a17e96b85c640f2ac1145b6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.4/wpiapi-cpp-23.0.4-linuxx86-64.zip",
        sha256 = "0508f007a5e5885e983629537d2951ff04c907d9efa33e9c1fa8bfb8a6c31420",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.4/wpiapi-cpp-23.0.4-linuxathena.zip",
        sha256 = "f52f132e445a93f70aaf46f8fc33b49982fcacd1e3f7d6bcf2bdc3c14bf4667b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.4/wpiapi-cpp-sim-23.0.4-windowsx86-64.zip",
        sha256 = "28970bb77895e82fe0e985aa192c41909c57697d75a6fe5c670de5da14a18962",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.4/wpiapi-cpp-sim-23.0.4-linuxx86-64.zip",
        sha256 = "0e931535be859411bd1431e88bc3573803b8b67fba8fbb32b6b125bdb5fd7c9a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.4/wpiapi-cpp-sim-23.0.4-osxuniversal.zip",
        sha256 = "b5ffbf1a91dbd06a8128551bdef451d468e2920d7fc3edf4fb7231a2a43457c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenixpro_wpiapi-java",
        artifact = "com.ctre.phoenixpro:wpiapi-java:23.0.4",
        artifact_sha256 = "43d12ff3fcec2f2513fe31c2d4ac61aff6a5181c108a179df26b75527d3f661a",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
