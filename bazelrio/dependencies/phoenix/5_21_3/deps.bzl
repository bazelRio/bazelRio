load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_21_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.21.3/api-cpp-5.21.3-headers.zip",
        sha256 = "2f7dac44f42cf119fa3fb9915f56ba771c21221d1e3f2e996edb4e0d1908012d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.3/api-cpp-sim-5.21.3-headers.zip",
        sha256 = "3ebf2721650e5281e6fe78a4185dfde9261f10b6dd3ec1d4f81e2d971de550bb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.21.3/cci-5.21.3-headers.zip",
        sha256 = "94408932babfa3f5eefc9116e843dac2ab588ab7e162bd2727d66898bfeff86c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.3/cci-sim-5.21.3-headers.zip",
        sha256 = "94408932babfa3f5eefc9116e843dac2ab588ab7e162bd2727d66898bfeff86c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.3/simCANCoder-5.21.3-headers.zip",
        sha256 = "8dbff0549502c5c2448e273ab28b510466b636c18383b8641fbeb9939eb0fca0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.3/simPigeonIMU-5.21.3-headers.zip",
        sha256 = "8dbff0549502c5c2448e273ab28b510466b636c18383b8641fbeb9939eb0fca0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.3/simTalonFX-5.21.3-headers.zip",
        sha256 = "8dbff0549502c5c2448e273ab28b510466b636c18383b8641fbeb9939eb0fca0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.3/simTalonSRX-5.21.3-headers.zip",
        sha256 = "8dbff0549502c5c2448e273ab28b510466b636c18383b8641fbeb9939eb0fca0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.3/simVictorSPX-5.21.3-headers.zip",
        sha256 = "8dbff0549502c5c2448e273ab28b510466b636c18383b8641fbeb9939eb0fca0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.21.3/wpiapi-cpp-5.21.3-headers.zip",
        sha256 = "3a61b29ed4a428cd422c91f54c0d27231e7c9fa2b4fc84b75a295d17ec491fde",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.3/wpiapi-cpp-sim-5.21.3-headers.zip",
        sha256 = "d3d95dd4a21180b263cebf74927a767abbfe33f49ea667b8216b3509318d6848",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.21.3/api-cpp-5.21.3-linuxathena.zip",
        sha256 = "44b986add1118c38feaebc313571bc723300b6d368ac4b14fb92932ddea39ae2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.3/api-cpp-sim-5.21.3-windowsx86-64.zip",
        sha256 = "b3f3660136a87531436fafbaf462b256860c16655631d4770f0243e205e662b3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.3/api-cpp-sim-5.21.3-linuxx86-64.zip",
        sha256 = "84b75b2a4668a933498a53c38c7b6ab2235624593d4227e4e1308d95c84fe892",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.21.3/api-cpp-sim-5.21.3-osxx86-64.zip",
        sha256 = "222972bed5cd596a0bb60b219df91572c7226068d1eac5f3c04ed687bb14d2bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.21.3/cci-5.21.3-linuxathena.zip",
        sha256 = "5243061d59dccfe9aa01111f1afac28a41154f2f315ff9e1c9fd2c663f15a95b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.3/cci-sim-5.21.3-windowsx86-64.zip",
        sha256 = "655101eb788aa9fe010947220834d112af263151e33f7a8bc1faa1d79e865a42",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.3/cci-sim-5.21.3-linuxx86-64.zip",
        sha256 = "3abc5eb19c64b60bdc91279942933a2e89d24f30943f5539d964199507691740",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.21.3/cci-sim-5.21.3-osxx86-64.zip",
        sha256 = "fc7dda04eb4d0905957b7d688f3b1a343d80e5be481428a088a96f080346fcd8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.3/simCANCoder-5.21.3-windowsx86-64.zip",
        sha256 = "27f1f83f12ec0bad397955311599057db5e54ec937260991031c10b990046bbc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.3/simCANCoder-5.21.3-linuxx86-64.zip",
        sha256 = "850a91d81561d5dba12d1222d63a14be53c233effc85dae8d0d527db8bb18b31",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.21.3/simCANCoder-5.21.3-osxx86-64.zip",
        sha256 = "8b5315976e8f2624f4ae22372f90a9b3c1ffedfadbba08543f6b8854877f4c63",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.3/simPigeonIMU-5.21.3-windowsx86-64.zip",
        sha256 = "8249542053a0509fdef5120be18e15130d71f4415cd0014a7f7a9c8a061a011e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.3/simPigeonIMU-5.21.3-linuxx86-64.zip",
        sha256 = "190e790798da625244eef930dc8f79125678d286a8a75867e0455b39ac5125b1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.21.3/simPigeonIMU-5.21.3-osxx86-64.zip",
        sha256 = "0bdad2e8efdb8fdd657f4b0cd791bb5add8145ec47c9fb8e128a737a0fa3ceca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.3/simTalonFX-5.21.3-windowsx86-64.zip",
        sha256 = "dfb4f1e1349881c5f4c935d26b1e514014c62d8467a630758fe9b93b975d3bc3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.3/simTalonFX-5.21.3-linuxx86-64.zip",
        sha256 = "0412d42aadc82e9f1ee47c77e8f2b83d8fa21bf8e6fadee4f4811f49fa17c795",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.21.3/simTalonFX-5.21.3-osxx86-64.zip",
        sha256 = "28c2c0e9236a29c32bdec392edd62752436109ba1aa2e105a0f72ac25d57e8a0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.3/simTalonSRX-5.21.3-windowsx86-64.zip",
        sha256 = "db416b8adfa038072991037d80f4a05b430f39df0d36305e2facd884b7b00fff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.3/simTalonSRX-5.21.3-linuxx86-64.zip",
        sha256 = "e52a88bf3ac3e44e09a05efd29a44883cd361ef65d09ff16bf85308420ae2a8d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.21.3/simTalonSRX-5.21.3-osxx86-64.zip",
        sha256 = "37d8350525cf21053276dfe9f59e0ee24147e2178aaac263073f7fa93edda164",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.3/simVictorSPX-5.21.3-windowsx86-64.zip",
        sha256 = "12bed85e27d81defd8afb9f0ccbd766ace4720a50ef7fd8020c53c59f6d5034c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.3/simVictorSPX-5.21.3-linuxx86-64.zip",
        sha256 = "e379e5dd1331533c130b2902114a1957018697fd4c57e4d361b0eabf3c7d0f0e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.21.3/simVictorSPX-5.21.3-osxx86-64.zip",
        sha256 = "a964cdea5da95551eca755c9c2a9796157c72fbbbc6b51668e25656e6e774e34",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.21.3/wpiapi-cpp-5.21.3-linuxathena.zip",
        sha256 = "d8035b92e418ac943cb80649ae5ee092f0cf73bd58173c9c549a74915cfd2859",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.3/wpiapi-cpp-sim-5.21.3-windowsx86-64.zip",
        sha256 = "585a64f67e67d30ce52596bc810ea0556fafb08a34c01a3a305dc9f28c358149",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.3/wpiapi-cpp-sim-5.21.3-linuxx86-64.zip",
        sha256 = "0cc06c52bf288d5b65877cfa3e75ba82ab037c2fe25c57ed7f2eb8f04487e2c1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.21.3/wpiapi-cpp-sim-5.21.3-osxx86-64.zip",
        sha256 = "3158abcdc3cab79c4fa0641f1608bff3cfc27168c5af4e3a4b12c5d4ceb81ac6",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.21.3",
        artifact_sha256 = "3d465eff73548411ed5fcedf02b429bb5097665579d4de94351322d3a71059b4",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.21.3",
        artifact_sha256 = "91e58c5c3dd5daa4caec75e825398fe3e6f030d5e9c3f9674e905df7f332f044",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
