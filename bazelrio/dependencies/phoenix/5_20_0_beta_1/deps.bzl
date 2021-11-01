load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared")

def setup_phoenix_5_20_0_beta_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.20.0-beta-1/api-cpp-5.20.0-beta-1-headers.zip",
        sha256 = "5365e0a2ff41c7304fcca905629a3f75777ffdf058fc6d4d17b191b46c620f51",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.20.0-beta-1/cci-5.20.0-beta-1-headers.zip",
        sha256 = "1359c75f71c59497e34f39ae60a3b0367c3814c7b36849eb179350d5dcc8e524",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.0-beta-1/cci-sim-5.20.0-beta-1-headers.zip",
        sha256 = "1359c75f71c59497e34f39ae60a3b0367c3814c7b36849eb179350d5dcc8e524",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.0-beta-1/simCANCoder-5.20.0-beta-1-headers.zip",
        sha256 = "44283ba4729633abaff73f3b1c13f3d792bb63a58f9ee67475425243a69c919b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.0-beta-1/simPigeonIMU-5.20.0-beta-1-headers.zip",
        sha256 = "44283ba4729633abaff73f3b1c13f3d792bb63a58f9ee67475425243a69c919b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.0-beta-1/simTalonFX-5.20.0-beta-1-headers.zip",
        sha256 = "44283ba4729633abaff73f3b1c13f3d792bb63a58f9ee67475425243a69c919b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.0-beta-1/simTalonSRX-5.20.0-beta-1-headers.zip",
        sha256 = "44283ba4729633abaff73f3b1c13f3d792bb63a58f9ee67475425243a69c919b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.0-beta-1/simVictorSPX-5.20.0-beta-1-headers.zip",
        sha256 = "44283ba4729633abaff73f3b1c13f3d792bb63a58f9ee67475425243a69c919b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.20.0-beta-1/wpiapi-cpp-5.20.0-beta-1-headers.zip",
        sha256 = "5d6b0f261bf1e7207c15827577f97d9ca3403994ff233f12647908c6fa35c6d1",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.20.0-beta-1/api-cpp-5.20.0-beta-1-linuxathena.zip",
        sha256 = "2ceefddecaa279ecd244e1c4e1d930ab4e966e34f464cf8f70a915535cb595c5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.20.0-beta-1/api-cpp-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "0150e880fe096a234f5485ea9ba3edc2c29e32d9b57ac8df89c50aac60a04467",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.20.0-beta-1/api-cpp-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "15ff78a7f6fe12690937b678c432cec582fdd668ad9d6fb346dc2dcf87f0b4d9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.20.0-beta-1/api-cpp-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "f7f7280124cc9d5044553997181d22349670cfd2c1733ace87e640325eb103cc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.20.0-beta-1/cci-5.20.0-beta-1-linuxathena.zip",
        sha256 = "6453392473ba0db442a9bf0b7815ca026624841dce595892ef92b3d86eaf3b6d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.0-beta-1/cci-sim-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "6418d23660dec11c11d8728842253a9aa894fe3050dfca94b627862586fc365a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.0-beta-1/cci-sim-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "3d10af3757e6912520f8052c7656bb16a84615c755ef912ca817e37e5ba16724",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.20.0-beta-1/cci-sim-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "71065b03e5369358e0ae3991ae182618199506f8fdfdf886053075914d07852f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.0-beta-1/simCANCoder-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "962e8aa09e8e30679ed9f2a5256a400cde8b9cd56c73fab38d8f0e2f125dd402",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.0-beta-1/simCANCoder-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "0d487f07a4edd33ba2d611c9e4cfcc8315911ac3661eb83bceca2bfc3c639054",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simcancoder_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simCANCoder/5.20.0-beta-1/simCANCoder-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "eaeedd26d7cba18d78a9c69717b5909eeca57cda1b71e8b120dfa14b0b547e96",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.0-beta-1/simPigeonIMU-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "9a9bf5cf59868ff2b7c640ac66a64eb1ff90028916b7fe4dc271aee3696d86a5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.0-beta-1/simPigeonIMU-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "8ac2c296b218063d1af80067e6cd1b1de3201d67ff4554c5f5f62d4e98297103",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simpigeonimu_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simPigeonIMU/5.20.0-beta-1/simPigeonIMU-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "ccda204a44a1bc8ced15a31cbcff9e330718eabac8d5c7aad155b43be17cd563",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.0-beta-1/simTalonFX-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "733bbfbaf4987968ff33df50b986ac680660f208ad6f24c7a0ed579a82a01574",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.0-beta-1/simTalonFX-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "da622b34fef95c19a9367a4ab37fbadbef66266a175dcf8a520e3a4aad8d6336",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonfx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonFX/5.20.0-beta-1/simTalonFX-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "f565124dd80656e86ac8dec30702a4c422ea0c04e23ebb65046ce55d8f73a647",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.0-beta-1/simTalonSRX-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "877de9967a630ebf893329010f527155552dd754c9a533ea778303502f26b77a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.0-beta-1/simTalonSRX-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "3fb62cc54b2f4ec00efe7171c9208bf15b155742bee59bf434b17b627fb19707",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simTalonSRX/5.20.0-beta-1/simTalonSRX-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "90805057bbc7404599860373c02fa9a149c2f3363872163b396b6762a5494f0a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.0-beta-1/simVictorSPX-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "faec09d895b2900719599d4fc24f55d94791385a9e0a8ed8e4fa3ba97f50e661",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.0-beta-1/simVictorSPX-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "1581dc60bf2dc825f760f44dc88c5bc7c095b29796928c1f62f8d67f0c476fd6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/simVictorSPX/5.20.0-beta-1/simVictorSPX-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "31e9d4bed7d6c8073745306efbd0f61aa951bc7273ebe5c44aeb08b87c35c612",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.20.0-beta-1/wpiapi-cpp-5.20.0-beta-1-linuxathena.zip",
        sha256 = "bf4f6a7e142a5a5a70fec2754c202708c5355d76b2df2161a687172b2bd5b047",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.20.0-beta-1/wpiapi-cpp-5.20.0-beta-1-windowsx86-64.zip",
        sha256 = "777dc0102697b88a0147fcd44347600a70bbf3778fa6a6c7b05d1ebcd5941d74",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.20.0-beta-1/wpiapi-cpp-5.20.0-beta-1-linuxx86-64.zip",
        sha256 = "cc4abf4ba4cd44158ed83a401140494d43b9c528661fc231ea1ff7d5e587a6f7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_osxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.20.0-beta-1/wpiapi-cpp-5.20.0-beta-1-osxx86-64.zip",
        sha256 = "add0329da7c9b02435f75ec2493638a8b2fe46c03043a3d97e5f802c1703e513",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.20.0-beta-1",
        artifact_sha256 = "f00591b96ee9323d9a8297025bdd6da3bdbbae95085e015702a88ba9d249d5f1",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.20.0-beta-1",
        artifact_sha256 = "51fd2b7d1af623b7f5a50a7c31747a3c2cccae75ad22debb1f65ac75872eab81",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
