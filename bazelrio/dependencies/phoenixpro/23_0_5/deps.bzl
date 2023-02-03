load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenixpro_23_0_5_dependencies():
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
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.5/wpiapi-cpp-23.0.5-headers.zip",
        sha256 = "c83c3979ccb5cdf9fbe60edb30ebe074fba93b3a1a6f7a819d7467bc55f00888",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.5/wpiapi-cpp-sim-23.0.5-headers.zip",
        sha256 = "c83c3979ccb5cdf9fbe60edb30ebe074fba93b3a1a6f7a819d7467bc55f00888",
        build_file_content = cc_library_headers,
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
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.5/wpiapi-cpp-23.0.5-windowsx86-64.zip",
        sha256 = "41857b8d918b9f097159eb969efc2219e2d355b65815692146083fd80a2f53b8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.5/wpiapi-cpp-23.0.5-linuxx86-64.zip",
        sha256 = "dceb73eb2eee59d624e77d0aab24293adef175743a4bdd06c76abc44d705aeb6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.5/wpiapi-cpp-23.0.5-linuxathena.zip",
        sha256 = "51fddb84b033268c0a1a6a96c96f9766ab827cfc2942c8545b15dc68a285950a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.5/wpiapi-cpp-sim-23.0.5-windowsx86-64.zip",
        sha256 = "33f78e1f022e637fbd185db9071a4506a4222712318161334c66c55b836e980b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.5/wpiapi-cpp-sim-23.0.5-linuxx86-64.zip",
        sha256 = "f955b64091f9e9f69b7a945669fc79b344ddb490700a4d6c618c1862786647cd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.5/wpiapi-cpp-sim-23.0.5-osxuniversal.zip",
        sha256 = "20e6a855a3abe4659f566835226a1878a09fcd45cafebcd83fd2842e50fdd235",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenixpro_wpiapi-java",
        artifact = "com.ctre.phoenixpro:wpiapi-java:23.0.5",
        artifact_sha256 = "3d099f62edef02205b74fd1e1ad52086496bc503f56bb39a6642f91f64c11d82",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
