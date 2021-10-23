load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_static")

def setup_phoenix_5_19_4_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/api-cpp/5.19.4/api-cpp-5.19.4-headers.zip",
        sha256 = "fe9cd755d09287c60decf3a7324456b39da0d6903914edf01cfea92cf873bf89",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-headers.zip",
        sha256 = "83ebd5e6552b97094dc48329ae6fc2157e4586efe80bcfa584110c4f01938b29",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/cci/5.19.4/cci-5.19.4-headers.zip",
        sha256 = "5eb70a62a1d99f531a63a88486822b22c057633009eef78151aa170e063ac6f9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/cci-sim/5.19.4/cci-sim-5.19.4-headers.zip",
        sha256 = "5eb70a62a1d99f531a63a88486822b22c057633009eef78151aa170e063ac6f9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-headers.zip",
        sha256 = "67bc9028b5ec447c972be02e7541520221aa819449634e15de7c90e7aa4fbdca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-headers.zip",
        sha256 = "207597b7fb6579141510fd877a4cc031a3a5a9a11c063fd64e06c6bb727649a3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_platform-sim_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/platform-sim/5.19.4/platform-sim-5.19.4-headers.zip",
        sha256 = "644f986291e9036c80ddb8791646f08635f1e988d4c14aaf429bbcc71b4857d6",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simTalonSRX/5.19.4/simTalonSRX-5.19.4-headers.zip",
        sha256 = "83ebd5e6552b97094dc48329ae6fc2157e4586efe80bcfa584110c4f01938b29",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simVictorSPX/5.19.4/simVictorSPX-5.19.4-headers.zip",
        sha256 = "83ebd5e6552b97094dc48329ae6fc2157e4586efe80bcfa584110c4f01938b29",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/wpiapi-cpp/5.19.4/wpiapi-cpp-5.19.4-headers.zip",
        sha256 = "476c6fed8b77ae3eec0aed8eb7ab6342b8ef9290b9c742d99c604ae1d89ae128",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/api-cpp/5.19.4/api-cpp-5.19.4-linuxathenastatic.zip",
        sha256 = "f0b0c5fde6654320d7b1405c336b47b2529c0a521403723111e88e533476512f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/api-cpp/5.19.4/api-cpp-5.19.4-windowsx86-64.zip",
        sha256 = "cbd1755f29e45ef17b7ad6279ef10b400debbc678001092f3bc8e80ea3083bca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/api-cpp/5.19.4/api-cpp-5.19.4-windowsx86-64static.zip",
        sha256 = "09c9cc2452da751a66ada9c6f927e5909b13db521c35608d84aa29309a7b146a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/api-cpp/5.19.4/api-cpp-5.19.4-linuxx86-64static.zip",
        sha256 = "753b92b82723755f101621aec9a0bb6a37fb249d02d1310934627ea9a1b829e7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_osxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/api-cpp/5.19.4/api-cpp-5.19.4-osxx86-64static.zip",
        sha256 = "97386037b983137146e2db8704a72609a5141da19d12f9b80b28d530c852c526",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-windowsx86-64.zip",
        sha256 = "570e3047c1fbd5e44138e5a6864d074c8b28c0f8b26fe8b03ebe802078286fdc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_windowsx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-windowsx86-64static.zip",
        sha256 = "f578182a781d80c77abc47933e1d84a06bc200323f47cd3ac3ed4a1078633011",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_linuxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-linuxx86-64.zip",
        sha256 = "7856a4ecf8f14762c463a056b0db1dcf624c69621115645758b006b7797d86bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_linuxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-linuxx86-64static.zip",
        sha256 = "a903a57c251c29137ce8f8f380792a58f5766d8aaeaf18faf56561e202fba178",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_osxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-osxx86-64.zip",
        sha256 = "9be88dfa318e6c6f4bc5c75180e55a491a17fb5e76b4bd8fbf66ca8ca3344c3c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_osxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-osxx86-64static.zip",
        sha256 = "8de5be1e61d7ac471ee1d9d2dc9d7cccc6cc581cfbb65921791b85257af24c69",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/cci/5.19.4/cci-5.19.4-linuxathena.zip",
        sha256 = "8577b66f3b0fafe608277479963926c28e9b11a59bc8c7d34f7900fa75bd08f4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/cci/5.19.4/cci-5.19.4-linuxathenastatic.zip",
        sha256 = "854684a91a41aee54acaf0c0f9100c86b101055a3c4651de2b9cdd0d15de5ef5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/cci-sim/5.19.4/cci-sim-5.19.4-windowsx86-64.zip",
        sha256 = "b3765072c82bfae16254ff017ae87d89dfa665f8b87624587d5a9a8872b1d333",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/cci-sim/5.19.4/cci-sim-5.19.4-windowsx86-64static.zip",
        sha256 = "9c8b355260d7e43bfc65ae8426d09eb1f1e526971bc857c821ea968851b183a0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/cci-sim/5.19.4/cci-sim-5.19.4-linuxx86-64.zip",
        sha256 = "4f8d620cea3d379920ffaeff1183eba912bcd4867a3879522ea51f2375aff474",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/cci-sim/5.19.4/cci-sim-5.19.4-linuxx86-64static.zip",
        sha256 = "a25c82b0e38fdbd20fd979a0cd560ca5b594c9c720c972e095ed65ffac1ff4a7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/cci-sim/5.19.4/cci-sim-5.19.4-osxx86-64.zip",
        sha256 = "e860c2f89f65b8dc9408e79e6e65cb928f2529e23fc0b050d4b8dfd4ce4c70e3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/cci-sim/5.19.4/cci-sim-5.19.4-osxx86-64static.zip",
        sha256 = "163ce5f844ba76a3d8813f14785e80a2d49515046745bcb3b240373de8dd8495",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_linuxathena",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-linuxathena.zip",
        sha256 = "ffded28f0f9d76e076b96ed5a582b1c27cb82b7b64e8e6547ed77b5577a1d861",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-linuxathenastatic.zip",
        sha256 = "28b0f497c043941898ba5ea0280dcdf133545b25ef98d5f2e493d02bc085584d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-windowsx86-64.zip",
        sha256 = "424bc61752f28da1709e694fda119ad89fed42eb2bf4a5948b0afff94eb1270c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_windowsx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-windowsx86-64static.zip",
        sha256 = "df0bc36d5416700eed9bdb0fc048de926d38fa82fbeb9d013beffb71523bc187",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_linuxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-linuxx86-64.zip",
        sha256 = "710d5245fbc1039872c6f337fc225e820231707ee67b97ad95ce085e5c3ddfde",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_linuxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-linuxx86-64static.zip",
        sha256 = "e42a0ce27de816763a7f28f1c99dabc296852dad5fc5c9b749ae4391a6c69e1c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_osxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-osxx86-64.zip",
        sha256 = "8c632576ebd0bf01304c1c0b1f87a49b650ae2a2195acd13dcf2f35785e3780d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_osxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-osxx86-64static.zip",
        sha256 = "264a19c04f1aebb450a65163e619f61440685728b27f29cba40713cfe4f6b7db",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_linuxathena",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-linuxathena.zip",
        sha256 = "5bf312264b90e4fb26e7776af8753720c29a05928e2d60f246be1ab327ba1471",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-linuxathenastatic.zip",
        sha256 = "03b093173a519bbdc97bee36c5e2f7c309e4a40d24c1858b528b0a4e2ec77ed1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-windowsx86-64.zip",
        sha256 = "fdb3c0dd72701488b8896bc48e3d80fbcaf663b27ca3e46316bb7ecbfe074110",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_windowsx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-windowsx86-64static.zip",
        sha256 = "354292a7d07b394cb68d73646ddbc00edc2783187129228a5183e611d50d7788",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_linuxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-linuxx86-64.zip",
        sha256 = "85f04f83ef812bb532e8cec1df74ce3983f833627809e5f580db7eb84be4c496",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_linuxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-linuxx86-64static.zip",
        sha256 = "3f515597d034475cd9c7430e51d7d2827dbf2a6ea43223d1d19c9e32ee29b34a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_osxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-osxx86-64.zip",
        sha256 = "12b4de2b9b40e2484a10c090197a43a94ffde13f5f791b72dac610c57d2bbd31",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_osxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-osxx86-64static.zip",
        sha256 = "6a6daee043daa974bb752c8726cfbbb24e3535fd48d777a35423cb174742107d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_platform-sim_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/platform-sim/5.19.4/platform-sim-5.19.4-windowsx86-64.zip",
        sha256 = "983484c7fbb426fa369b36283e50eb59c69708eb4241dbbdc07d880e59b015c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_platform-sim_windowsx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/platform-sim/5.19.4/platform-sim-5.19.4-windowsx86-64static.zip",
        sha256 = "4fa28b69007167731dae970b91449e74a3c34e8d5180d0aa7db9b53f4c5717ac",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_platform-sim_linuxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/platform-sim/5.19.4/platform-sim-5.19.4-linuxx86-64.zip",
        sha256 = "b367c10838893676a62d18adaf2a58c267bdb804b5ef0d79a112df77148c7b3c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_platform-sim_linuxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/platform-sim/5.19.4/platform-sim-5.19.4-linuxx86-64static.zip",
        sha256 = "51488c4933d4954d3772926754766a3b43cc33169225b5eb28db8709f71388b1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_platform-sim_osxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/platform-sim/5.19.4/platform-sim-5.19.4-osxx86-64.zip",
        sha256 = "0086845681831206ee80d331a74acaecf8be4af0356f3ab8f0ffd69f93b68bae",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_platform-sim_osxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/platform-sim/5.19.4/platform-sim-5.19.4-osxx86-64static.zip",
        sha256 = "81ec65137d7a5242087157e37aa5ac11a38eb7a60a705db5e75dead7d11a897b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simTalonSRX/5.19.4/simTalonSRX-5.19.4-windowsx86-64.zip",
        sha256 = "5f0ef9867f9bdb4cd6d1a6b306ae1d153d24a71dffc73b4893b45a3271399b35",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_linuxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simTalonSRX/5.19.4/simTalonSRX-5.19.4-linuxx86-64.zip",
        sha256 = "6f64470deb99eef63e46083e5d54f9c9f04a0ce9ce0bca96d99c54953ccec15b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simtalonsrx_osxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simTalonSRX/5.19.4/simTalonSRX-5.19.4-osxx86-64.zip",
        sha256 = "4b06a52ff326df631699eddf9c4febf422ec7595bd68920095bca4f2116fb2a6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simVictorSPX/5.19.4/simVictorSPX-5.19.4-windowsx86-64.zip",
        sha256 = "e78688c15feed1d40ec5a176376bd2fbd39fee7f7def7ce59e1d49c3089832f4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_linuxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simVictorSPX/5.19.4/simVictorSPX-5.19.4-linuxx86-64.zip",
        sha256 = "a32259c3513bbdf0b256ce4a70678c7fd58d5fb1e4e48a593470b1f362498d04",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_simvictorspx_osxx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/sim/simVictorSPX/5.19.4/simVictorSPX-5.19.4-osxx86-64.zip",
        sha256 = "f121bc5c47750d8f3a30c64db461930e024baaf13b36c293c3f606014ecd353f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/wpiapi-cpp/5.19.4/wpiapi-cpp-5.19.4-linuxathenastatic.zip",
        sha256 = "f9976026d4ed2f3b3277cae80384f3a433e7ff98e80cffda58f64eff9fc65731",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/wpiapi-cpp/5.19.4/wpiapi-cpp-5.19.4-windowsx86-64.zip",
        sha256 = "0c11e1951f29f567cf5aeead23eea451c6d58f8e8f3b70d6fa688c8804997507",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/wpiapi-cpp/5.19.4/wpiapi-cpp-5.19.4-windowsx86-64static.zip",
        sha256 = "3e2f9f6e40a7eebe0f788ac6b33a4bd14426032f91831d335b92522e67cfacc8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/wpiapi-cpp/5.19.4/wpiapi-cpp-5.19.4-linuxx86-64static.zip",
        sha256 = "bd2561045c21309f761faa5ced2f9081166daa331c1ba999ca3898dffbd79827",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_osxx86-64static",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/wpiapi-cpp/5.19.4/wpiapi-cpp-5.19.4-osxx86-64static.zip",
        sha256 = "827867aaf3f6f0f2454a4b540413581ddd62916647f9ea92fd54071d63313555",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.19.4",
        artifact_sha256 = "ae736a606b804f95b04cb4ef10f5272265b1a1e88986506f1354ba8781ded900",
        server_urls = ["https://devsite.ctr-electronics.com/maven/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.19.4",
        artifact_sha256 = "ee9f9d0269ed50e531ff3b1455ca0d9e3cda3604f7ddaff8e80fe68ead259340",
        server_urls = ["https://devsite.ctr-electronics.com/maven/release"],
    )
