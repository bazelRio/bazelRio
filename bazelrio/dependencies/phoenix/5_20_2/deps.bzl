load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_20_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.20.2/api-cpp-5.20.2-headers.zip",
        sha256 = "a5c192134fe3bfa1a1d46518ee8fff861bc9f8dc34a2cb541a8bbd5d8ddbf818",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.20.2/api-cpp-sim-5.20.2-headers.zip",
        sha256 = "a5c192134fe3bfa1a1d46518ee8fff861bc9f8dc34a2cb541a8bbd5d8ddbf818",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.20.2/cci-5.20.2-headers.zip",
        sha256 = "1363afa72180fa59ee34d3ec9e4ccb98458fdf1f2b8b894b41547747466e86bc",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.2/cci-sim-5.20.2-headers.zip",
        sha256 = "1363afa72180fa59ee34d3ec9e4ccb98458fdf1f2b8b894b41547747466e86bc",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.2/simCANCoder-5.20.2-headers.zip",
        sha256 = "f39ea63bb09ba8736dacf8a2f5fd4591912b466b8054dd88d3cbe01a1f943e57",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.2/simPigeonIMU-5.20.2-headers.zip",
        sha256 = "f39ea63bb09ba8736dacf8a2f5fd4591912b466b8054dd88d3cbe01a1f943e57",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.2/simTalonFX-5.20.2-headers.zip",
        sha256 = "f39ea63bb09ba8736dacf8a2f5fd4591912b466b8054dd88d3cbe01a1f943e57",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.2/simTalonSRX-5.20.2-headers.zip",
        sha256 = "f39ea63bb09ba8736dacf8a2f5fd4591912b466b8054dd88d3cbe01a1f943e57",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.2/simVictorSPX-5.20.2-headers.zip",
        sha256 = "f39ea63bb09ba8736dacf8a2f5fd4591912b466b8054dd88d3cbe01a1f943e57",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.20.2/wpiapi-cpp-5.20.2-headers.zip",
        sha256 = "ea0f94efa884896a7fe6071e22d1a5fd87076b4e8a838bac5493dbb1b5b3baf6",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.20.2/wpiapi-cpp-sim-5.20.2-headers.zip",
        sha256 = "ea0f94efa884896a7fe6071e22d1a5fd87076b4e8a838bac5493dbb1b5b3baf6",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.20.2/api-cpp-5.20.2-linuxathena.zip",
        sha256 = "e77de35f12871595cfece1316d9a8e0f168590f38b0162c0419289784d4ea283",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.20.2/api-cpp-sim-5.20.2-windowsx86-64.zip",
        sha256 = "30e0a6c44f5e79785750bbdc12a3c2fcbca01f03ee360350930c04b154176504",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.20.2/api-cpp-sim-5.20.2-linuxx86-64.zip",
        sha256 = "6a95f11d9a0763d72cffe47429f7b7fce4463759581cd8b2ce8ba56f50206dce",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.20.2/api-cpp-sim-5.20.2-osxx86-64.zip",
        sha256 = "aa4f6b923d82a1585d9df84996fd725481b985b436ef8f45e54c3c522e2c14a2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.20.2/cci-5.20.2-linuxathena.zip",
        sha256 = "c056bb3856003f7bcceef8082907852a6d6ecc76cee9d6d615020b7f07795e72",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.2/cci-sim-5.20.2-windowsx86-64.zip",
        sha256 = "c370dc11c328bf006c44771bc0b78027af296ed3a9b826fc9664b88ef5aabfd9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.2/cci-sim-5.20.2-linuxx86-64.zip",
        sha256 = "80cf04aecf8ab12335e5c7281b572a52db16fd7b8ff04651ae655815fcc112f5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.2/cci-sim-5.20.2-osxx86-64.zip",
        sha256 = "e0eec6bb14e99936fbd05b285c34dffb4675ed32e019e3d578b4b469b931c8b5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.2/simCANCoder-5.20.2-windowsx86-64.zip",
        sha256 = "fcc8f8aeb3748d8037909ce81c0b4550d11e02f72dc89c14884a8b0266b17514",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.2/simCANCoder-5.20.2-linuxx86-64.zip",
        sha256 = "8498bfeef19037e528646e207b593c79d68d79fb9881ac1873262dcc38b1285b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.2/simCANCoder-5.20.2-osxx86-64.zip",
        sha256 = "b47da2d29a03a801876299777ca6913206930076104f66000e9a4f5f6e3cf4bf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.2/simPigeonIMU-5.20.2-windowsx86-64.zip",
        sha256 = "a4cabfafa914af7f1c2e0f35bec07e0a70644bc69739a476d090f88dc093bebe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.2/simPigeonIMU-5.20.2-linuxx86-64.zip",
        sha256 = "a450c52ac436d4dddfcaa0f58f88ae8acf854bd995bc9a27c8877706b1346421",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.2/simPigeonIMU-5.20.2-osxx86-64.zip",
        sha256 = "935e1e6df926ea7f8e0b87e35505371a1194240d05d7c305630375b93ebfddad",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.2/simTalonFX-5.20.2-windowsx86-64.zip",
        sha256 = "e6263df262ff5e450d473d07c2ba44aede7b0bfc1187d28023097e9f1f2dc3bc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.2/simTalonFX-5.20.2-linuxx86-64.zip",
        sha256 = "56c45b9d6511748f34017f90608e81d19209ce78a1e943683bcf7d6f2ec0ea35",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.2/simTalonFX-5.20.2-osxx86-64.zip",
        sha256 = "0e3f33535f34c1977fef882351bed9e60279e67be8685c52a07601aa0035c318",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.2/simTalonSRX-5.20.2-windowsx86-64.zip",
        sha256 = "80f8684b410ddaf18d1078ca909a2e4f121b7fa32d7cffd366ea0d0600f0640e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.2/simTalonSRX-5.20.2-linuxx86-64.zip",
        sha256 = "b595daa77385e4ea411ae9969b4fb3e464a0233704589c747a77db018c331a56",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.2/simTalonSRX-5.20.2-osxx86-64.zip",
        sha256 = "fcd9ce46485cee96669b5c13e2f7bf4815647436055c43eba3620894aebcda30",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.2/simVictorSPX-5.20.2-windowsx86-64.zip",
        sha256 = "3d502c3cab301d0bfd12fc30ef4588514c33d755a1841001cf182634c5af7060",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.2/simVictorSPX-5.20.2-linuxx86-64.zip",
        sha256 = "f7305f8480eacf4d429532263a7232a6bee44fb12f1c2eee203fdf46f852b20d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.2/simVictorSPX-5.20.2-osxx86-64.zip",
        sha256 = "2b8f328f7558a12dd7c2dfa47b9a229e970969d018a4ae6fa24f65f702f43ba9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.20.2/wpiapi-cpp-5.20.2-linuxathena.zip",
        sha256 = "0ce2dc5dbb69a623e942c43204a2ca9472083ff8c7cb35ca2369a2630fda9c3a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.20.2/wpiapi-cpp-sim-5.20.2-windowsx86-64.zip",
        sha256 = "39f7440688040829b645562c4329788dcdedf9d3d6a80e6fe30a5bb4a12747d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.20.2/wpiapi-cpp-sim-5.20.2-linuxx86-64.zip",
        sha256 = "d571b60c6bbaf4e2559c0b3df579ff6dce35c3f5292e389737854aaae25d6fb7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.20.2/wpiapi-cpp-sim-5.20.2-osxx86-64.zip",
        sha256 = "ef679db4752e49f5d3cc354ec9b5cc46cdc9ce04dd296a10a7cf07b34bfbe71e",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.20.2",
        artifact_sha256 = "ea09e2c76e2c605187782a42b1c217c1c5b64d9b2b9803045b3a1a0208d7237f",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.20.2",
        artifact_sha256 = "64611652eae1d4da7558e3cb8267f44908670d2e2586895fbc1a1dd3bd099940",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
