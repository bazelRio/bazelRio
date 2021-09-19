load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
filegroup_all = """filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

def setup_phoenix_dependencies():
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
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_canutils_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/canutils/5.19.4/canutils-5.19.4-linuxathenastatic.zip",
        sha256 = "473c5f9516b47d9f0663f49d3dc6b70f30eb418b6ba70def00cc35ac7b79cbf3",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/cci/5.19.4/cci-5.19.4-linuxathenastatic.zip",
        sha256 = "854684a91a41aee54acaf0c0f9100c86b101055a3c4651de2b9cdd0d15de5ef5",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_core_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/core/5.19.4/core-5.19.4-linuxathenastatic.zip",
        sha256 = "28b0f497c043941898ba5ea0280dcdf133545b25ef98d5f2e493d02bc085584d",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_diagnostics_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/diagnostics/5.19.4/diagnostics-5.19.4-linuxathenastatic.zip",
        sha256 = "03b093173a519bbdc97bee36c5e2f7c309e4a40d24c1858b528b0a4e2ec77ed1",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathenastatic",
        url = "https://devsite.ctr-electronics.com/maven/release/com/ctre/phoenix/wpiapi-cpp/5.19.4/wpiapi-cpp-5.19.4-linuxathenastatic.zip",
        sha256 = "f9976026d4ed2f3b3277cae80384f3a433e7ff98e80cffda58f64eff9fc65731",
        build_file_content = filegroup_all,
    )