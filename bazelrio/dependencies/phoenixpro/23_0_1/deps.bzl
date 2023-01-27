load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenixpro_23_0_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-headers.zip",
        sha256 = "c5078f604b3f9480f860560dc3d9d31a54e3c41045ead04440bd02ea24ade1ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-headers.zip",
        sha256 = "74d79bb3e739d9d6b87311656b0530aaefc211952cc647a3d57776a0cee9efce",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-headers.zip",
        sha256 = "74d79bb3e739d9d6b87311656b0530aaefc211952cc647a3d57776a0cee9efce",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.1/wpiapi-cpp-23.0.1-headers.zip",
        sha256 = "87906eac91042774388468d1114d47511e76158fd4fca103827dd79cda0f4b93",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.1/wpiapi-cpp-sim-23.0.1-headers.zip",
        sha256 = "87906eac91042774388468d1114d47511e76158fd4fca103827dd79cda0f4b93",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-windowsx86-64.zip",
        sha256 = "95e6da8a779e372b02f16991f8df62ee9b3e1369d28a8ea945722a65b3e4930e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-linuxx86-64.zip",
        sha256 = "2a55b95a1ce3c00f76077837e1d2e548e5386a3c686c92c2d3d332e510f04bca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.1/simCANCoder-23.0.1-osxuniversal.zip",
        sha256 = "caa0bb8f57dad213e763861ed397d394a967a4c24c3e76bf1c0cd0718208acd8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-windowsx86-64.zip",
        sha256 = "a8ca3e9317266ab18282a586d84398a9b63b52a7f4f67f6022bcde8770186007",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-linuxx86-64.zip",
        sha256 = "59b160eef3281d36086e33e218f335d18348ad64afc3b360f5b55e24be135775",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.1/simPigeonIMU-23.0.1-osxuniversal.zip",
        sha256 = "ba7848fc04b79ff592681dbea83b5fc1aac179f4ac35183d01bfa7ba45a196e5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-windowsx86-64.zip",
        sha256 = "0f9698ddbfcdd94c88825114759ed802065cc801bf74d0156cc2c700c7bbbc49",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-linuxx86-64.zip",
        sha256 = "f08e3293f72d320a0043f5a8f2659ce61e4734ce174c6852bae52577c1394920",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.1/simProCANcoder-23.0.1-osxuniversal.zip",
        sha256 = "5b3767142b3e93ff179d1571a497c2857ed433e31b009b13505a3c7299b6d78f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-windowsx86-64.zip",
        sha256 = "b5c7d15d274140952ed775522e7f7a2cfee677b22dbf7030f2d0912b15f84649",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-linuxx86-64.zip",
        sha256 = "d45e40e4c7d5d8414c6177f43749f55e252b0a9e8a6da92a6d868b5b10ec0e64",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.1/simProPigeon2-23.0.1-osxuniversal.zip",
        sha256 = "dc0510dfb5c9698f48f766b7fd440d42ddc77f13f6816b0b59ed7cb2ef5eda17",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-windowsx86-64.zip",
        sha256 = "386e361c353682f2a88cb72777e75b7016517cb7ee1437fcdc2c5cf27c7c1c9d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-linuxx86-64.zip",
        sha256 = "7a2016105d5e9113bed770fd2176888141b8b22743afe3e2cc3648e88b24fb51",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.1/simProTalonFX-23.0.1-osxuniversal.zip",
        sha256 = "486f43bb4d61d8531814a7854e899b5e345b055975def5616703aba48aaa4e19",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-windowsx86-64.zip",
        sha256 = "b72ccade092e6b10cdf95da94d927ede96b1e7d6e815427ae73dd470a0c63650",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-linuxx86-64.zip",
        sha256 = "659090a8b04b7939bf98d5c431584c42a138517cbe694c499adefed782420023",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.1/simTalonFX-23.0.1-osxuniversal.zip",
        sha256 = "cad92c7c03cffe0b829d4bdb58158e5d38098f24c7a3ef3890722753526aa5f2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-windowsx86-64.zip",
        sha256 = "be7d4f94901bc8fda18bc2ed03aaa92360933166ad60f5082205d0c2fdf3b685",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-linuxx86-64.zip",
        sha256 = "6624ce0778d311d7f84639fc090017c9221f034aa6d8d4082c6420fd353c64a0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.1/simTalonSRX-23.0.1-osxuniversal.zip",
        sha256 = "d5b1282e1671e0f5e6ffe2ba10cc83300e3800ceccd19c81959ccf0e8e341b98",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-windowsx86-64.zip",
        sha256 = "444fd3d66c5c4a9d79ee978b4830e10431f72efba20950f735f8b906dfd68ca4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-linuxx86-64.zip",
        sha256 = "b268e7a0b613ca83d875c3bda2720a851db68bdf44d22e548d5794ad924d15e0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.1/simVictorSPX-23.0.1-osxuniversal.zip",
        sha256 = "727e04de4571944edc2a71d2dbacbf50d4258eb200838ffa4d86bd7cf6b8b990",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-windowsx86-64.zip",
        sha256 = "8829c04b6c4703b20ac435974d300c9133dbc32ae8bba9ddb6be151740ac6aff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-linuxx86-64.zip",
        sha256 = "ca427451101fa1b679f78e6ae577e680aaf250a18fdd9faf6690a0967f56f7f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.1/tools-23.0.1-linuxathena.zip",
        sha256 = "1791b35fdf76aa08ad120e4d689d9440bd386542f63f5c44e4047a06e2e05b9a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-windowsx86-64.zip",
        sha256 = "77f809b5af6998d5be557b9329667b73f08bd7172b76d74d8200f8d44c27f781",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-linuxx86-64.zip",
        sha256 = "9a51be1b60ecdc4eea0c7da6eb577292d902b68641ce2aa0aec42a79ea79c8cb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.1/tools-sim-23.0.1-osxuniversal.zip",
        sha256 = "8ca9a8778e532af9f087161feba1ed2317baf04c1d1b35975e0776d655ff02cb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.1/wpiapi-cpp-23.0.1-windowsx86-64.zip",
        sha256 = "71e6b40743812bcc8bf7712daff410a5986f7fbc7c67196cc482c3f9976562c3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.1/wpiapi-cpp-23.0.1-linuxx86-64.zip",
        sha256 = "448a6423952ca3dca5d41209141b557c63ee9f4c4d1daa6604c14b8fb482f33f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.1/wpiapi-cpp-23.0.1-linuxathena.zip",
        sha256 = "6ca0b4eb537d94861410c218cb256724636853c0b6568d5982ef41c844172a20",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.1/wpiapi-cpp-sim-23.0.1-windowsx86-64.zip",
        sha256 = "806a0375b3f9f582970d20f39b13552200f0612768ae605c361024b0f704ad48",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.1/wpiapi-cpp-sim-23.0.1-linuxx86-64.zip",
        sha256 = "39477bcacb5d3808fa32904fc336d23c663df3b87c5dd88122d7314b06aaf7de",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.1/wpiapi-cpp-sim-23.0.1-osxuniversal.zip",
        sha256 = "3815ff09fe81bd1c34c58e15d8caec1b77d572df8b1546c8394f55c3372073e4",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenixpro_wpiapi-java",
        artifact = "com.ctre.phoenixpro:wpiapi-java:23.0.1",
        artifact_sha256 = "1cfabf23974d79e87790e692d8227324fa53ed5ec5b4961a6f2b99c0ed1eb06c",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
