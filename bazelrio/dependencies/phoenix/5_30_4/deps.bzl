load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_30_4_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.4/api-cpp-5.30.4-headers.zip",
        sha256 = "0f38d570949a4e8833aa6ab5a9fa0caf232344d96674d1e4ae342c63a47bdf2a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.4/api-cpp-sim-5.30.4-headers.zip",
        sha256 = "807f8a7249f3bf8ae034dfd1c7326d20babcbf5079dee4c4e6f3951cba1ef60d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.4/cci-5.30.4-headers.zip",
        sha256 = "c6be4d8472dabe57889ca14deee22487a6ae964f7e21ad4b7adfa2d524980614",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.4/cci-sim-5.30.4-headers.zip",
        sha256 = "c6be4d8472dabe57889ca14deee22487a6ae964f7e21ad4b7adfa2d524980614",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.5/simCANCoder-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.5/simPigeonIMU-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.5/simProCANcoder-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.5/simProPigeon2-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.5/simProTalonFX-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.5/simTalonFX-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.5/simTalonSRX-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.5/simVictorSPX-23.0.5-headers.zip",
        sha256 = "c38b2721d3f3610246e0bf957bc31605773677aead8c45115819942013993ac9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.5/tools-23.0.5-headers.zip",
        sha256 = "51c52dfce4c2491887a7b7380e2f17e93a4092b6ac9f60d716738447a8ebedd7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.5/tools-sim-23.0.5-headers.zip",
        sha256 = "51c52dfce4c2491887a7b7380e2f17e93a4092b6ac9f60d716738447a8ebedd7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.4/wpiapi-cpp-5.30.4-headers.zip",
        sha256 = "6eeb2c5018e33ce164e5284f7b9d2aa049df75f3ee99897f1761a9682d2957d9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.4/wpiapi-cpp-sim-5.30.4-headers.zip",
        sha256 = "865686b559d008e46ff520188176b7ac7c254d83cb8bc097c50bf6fee9d37182",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.4/api-cpp-5.30.4-windowsx86-64.zip",
        sha256 = "786537ff96f14e6a3a3a2a315e932b2bf016146ef2aedc5dc6a1f91da5da8c96",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.4/api-cpp-5.30.4-linuxx86-64.zip",
        sha256 = "b3349dfcb367f6d729ea14e16cec4af96668d959d423d7e47c19ec991c6626b6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.4/api-cpp-5.30.4-linuxathena.zip",
        sha256 = "1ba6c3a17a644bb7f9643faf5ba6cc6d20e43991fbfffb58c8f0d3e780f3a2bc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.4/api-cpp-sim-5.30.4-windowsx86-64.zip",
        sha256 = "9283932f3373bc9b7bfc6a7b2e2c0aea91b8d6034fd3f0f471edabe8582b8bd4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.4/api-cpp-sim-5.30.4-linuxx86-64.zip",
        sha256 = "50be2396d89cdf2ca73534181d7b1e627931c58b3875036354887bd8f542bb41",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.4/api-cpp-sim-5.30.4-osxuniversal.zip",
        sha256 = "11f83fdbb040e8a1122065d1dae8b718c57c7a68d2da406223d1fce2f3c31cb2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.4/cci-5.30.4-windowsx86-64.zip",
        sha256 = "763ff77b40904eec3a1f89bc2fd5c06d2c1f2f7dd1f22d485878223e5542b2c6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.4/cci-5.30.4-linuxx86-64.zip",
        sha256 = "897bbdcc6166ccf913e75314966fddc70a5d879fa0934f838142085b9a283605",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.4/cci-5.30.4-linuxathena.zip",
        sha256 = "e4f31ac2a08360f2d5061cdf4d288f95379f2286fcd6736def384723d2d69f24",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.4/cci-sim-5.30.4-windowsx86-64.zip",
        sha256 = "795e2a141ce1594356361b0e6b411b5556540b5f4e91e88a99349c085cd736b9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.4/cci-sim-5.30.4-linuxx86-64.zip",
        sha256 = "9a3b406933df726d8008fa165af807997bba3dbfbf42ebf33324267ae6ce92dc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.4/cci-sim-5.30.4-osxuniversal.zip",
        sha256 = "806d95136e7029b67285fb4e4ee1fa9a9db6aacc984a89d56e0845f6c9b12097",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.5/simCANCoder-23.0.5-windowsx86-64.zip",
        sha256 = "20441307e5e842dc61e95e974cdadd9b78be72ba131fb55eecbbc8f65690990a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.5/simCANCoder-23.0.5-linuxx86-64.zip",
        sha256 = "a1a09df1ee621dffd1081a6a9d15641028bae8157e087dd0a964d409645750a4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.5/simCANCoder-23.0.5-osxuniversal.zip",
        sha256 = "862a3315b66819f7bfbb098ef9ce18856af0c1d69e7041fdee2709f7aeb5f6b3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.5/simPigeonIMU-23.0.5-windowsx86-64.zip",
        sha256 = "50886db6261b1c59c7f0d7fc5ba49520255d4dc9897bd2d0c1ca54757800d604",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.5/simPigeonIMU-23.0.5-linuxx86-64.zip",
        sha256 = "33f9ccb2fa3cc8a95c8d034c20df6e4ed83d995a849f048fa713f70ea5568991",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.5/simPigeonIMU-23.0.5-osxuniversal.zip",
        sha256 = "e7bf93d8490edfb5a9184ba3a837438dc8bb2c73bdc274a0c88fedb554b09021",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.5/simProCANcoder-23.0.5-windowsx86-64.zip",
        sha256 = "8663a63e02a6c313a3353af215bd153827e7686bb0d73bac07efa9c1a55b22c0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.5/simProCANcoder-23.0.5-linuxx86-64.zip",
        sha256 = "98bddb5598af911195ac9eaad39735782358b725592d868953d31d4cade07fa7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.5/simProCANcoder-23.0.5-osxuniversal.zip",
        sha256 = "e93adcac8b8eb69e9203dcfc843c0586656449836d240377c1dc56a6a99823b4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.5/simProPigeon2-23.0.5-windowsx86-64.zip",
        sha256 = "d7a4dc209dd7d21d44655b51af208cd5223fdd8c9951536f6fa7e8c11c7326db",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.5/simProPigeon2-23.0.5-linuxx86-64.zip",
        sha256 = "62b3dd9d9cd80a9c962fb3da26515f4e0e5eb85feb13f3eddee13322f631755b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.5/simProPigeon2-23.0.5-osxuniversal.zip",
        sha256 = "6d9a81c8e16b67a10595ada5e2962e810b419edcbb8a8cc6b9f0cdb2a3309ec4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.5/simProTalonFX-23.0.5-windowsx86-64.zip",
        sha256 = "846b9ea29cac9f867f820e92b63c4544d6ee3ca9875967dab9316f89700367fa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.5/simProTalonFX-23.0.5-linuxx86-64.zip",
        sha256 = "2b7300c6f58d986eb7aeba655afc1c6c9a7e4a663bb56a3d836b5cdcf30851fc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.5/simProTalonFX-23.0.5-osxuniversal.zip",
        sha256 = "d436947b76f456cd9b223769b533a3da0c2880278f8f4d0f523cf92a3ef7cfaf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.5/simTalonFX-23.0.5-windowsx86-64.zip",
        sha256 = "c2f971e549f78b57a0984aa3710fd3add24a0c826cb59b90b0e7df2037353908",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.5/simTalonFX-23.0.5-linuxx86-64.zip",
        sha256 = "7b834f7e691745036f45208cbe6096f49e72f9a39735bd60cae95a0f27991522",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.5/simTalonFX-23.0.5-osxuniversal.zip",
        sha256 = "2989929c864967ea05974dd9100fd4e1a5ad40ddfad32c54903309baf8f23c04",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.5/simTalonSRX-23.0.5-windowsx86-64.zip",
        sha256 = "c08742d772f7ae8ba23460c8a8fbfbcd0d8ace815b986d3ae02dd8be09661823",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.5/simTalonSRX-23.0.5-linuxx86-64.zip",
        sha256 = "4abdee2fdea5687ac2c7d2f419ade0179d5624ee5ce603aa186edee16f93d19a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.5/simTalonSRX-23.0.5-osxuniversal.zip",
        sha256 = "28d58c78e7101585b16340bbe9566ebf76d502a9e793e405afcb5fbf1fc1b0c0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.5/simVictorSPX-23.0.5-windowsx86-64.zip",
        sha256 = "3f528fe98bd8ed6d7db03de99c4f1a4269599b0f280d46ee0fb18b4667e3ef59",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.5/simVictorSPX-23.0.5-linuxx86-64.zip",
        sha256 = "4a5d5f93dfa7eb395672e2b3add285c2455da93e7610d99a99740bd788008c26",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.5/simVictorSPX-23.0.5-osxuniversal.zip",
        sha256 = "5609e9f597b7a8181df1add3c95b2a908c74d348bfaf4fd7dc1abd8401929587",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.5/tools-23.0.5-windowsx86-64.zip",
        sha256 = "443c98c042b1e298b8234782e91b12fa0c06e0204cc76008002c07a55b6ed7bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.5/tools-23.0.5-linuxx86-64.zip",
        sha256 = "cdbc34293ea7245215eb62502b833d94467f872913b5cde4e3d30f47375471ee",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.5/tools-23.0.5-linuxathena.zip",
        sha256 = "9fb137321745c1eff63bdcfe486806afb46ede11ea4d4c59461320845698cc1e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.5/tools-sim-23.0.5-windowsx86-64.zip",
        sha256 = "d925668e089e6e7b917c4b8288e1a2f2a063792a5eb05ecba108e072096ba803",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.5/tools-sim-23.0.5-linuxx86-64.zip",
        sha256 = "768ba71218c07efe4f721d272a890230a8f009e48de7a8d88ba0649c4d39d203",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.5/tools-sim-23.0.5-osxuniversal.zip",
        sha256 = "2019c4c8ed0c519a286a6f3bc7ef1e654ada5233ae3e899966803f0fd6215cc5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.4/wpiapi-cpp-5.30.4-windowsx86-64.zip",
        sha256 = "60cca5db27b0f2f901fea9cdc1d9fe33c26ae85a9ebba8bb8924173ce78fcd89",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.4/wpiapi-cpp-5.30.4-linuxx86-64.zip",
        sha256 = "b0a9f73a4e4544580cbb05593eed99776a4e8997db6386deda48ed9a7d2cd987",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.4/wpiapi-cpp-5.30.4-linuxathena.zip",
        sha256 = "45731d11fc9aee3797e97cc1a31eed5318ac1177e4189c8eb1848228887a6b57",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.4/wpiapi-cpp-sim-5.30.4-windowsx86-64.zip",
        sha256 = "79977f947abae9eeae057b3361b9da1ec193039b4fb77db89e809739b21ce253",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.4/wpiapi-cpp-sim-5.30.4-linuxx86-64.zip",
        sha256 = "4b0d8923ff13c7fb035f52fe2c6db034ecd4432c90fbedfa5acb7ef7e1390d54",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.4/wpiapi-cpp-sim-5.30.4-osxuniversal.zip",
        sha256 = "14e6a17c1282d92cea1045b84a2a645df3fcae89a9ddc321c0efaa713933e991",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.30.4",
        artifact_sha256 = "ef710978481b600199a4677888b77d411d3ae4d36ef9f783bf073394e1d93bad",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.30.4",
        artifact_sha256 = "73420874303b73cd738b007bc1e2239c515714831ba905f866296f54eb19ecfe",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
