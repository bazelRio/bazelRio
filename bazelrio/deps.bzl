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

def setup_bazelrio_dependencies():
    # Other bazel rules
    maybe(
        http_archive,
        "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.3.0/rules_python-0.3.0.tar.gz",
        sha256 = "934c9ceb552e84577b0faf1e5a2f0450314985b4d8712b2b70717dc679fdc01b",
    )

    # Toolchains
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_macos",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Mac-Toolchain-7.3.0.tar.gz",
        sha256 = "0822ff945ff422b176571cebe7b2dfdc0ef6bf685d3b6f6833db8dc218d992ae",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_linux",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz",
        sha256 = "00cc58bf0607d71e725919d28e22714ce1920692c4864bc86353fc8139cbf7b7",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_windows",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Windows-Toolchain-7.3.0.zip",
        sha256 = "f3e9ba32b63d3cd26e242feeb14e878fecbda86c19c12b98c3084c629e06acb3",
        build_file_content = filegroup_all,
    )

    # GENERATED DEPENDENCIES
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxathena.zip",
        sha256 = "637dc07b7a3e99b4a9ffbb73ff763e61baa379ac6dce56c8bd5ffbc8d91d722d",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-headers.zip",
        sha256 = "c1bb5ba16138be092c52664147d26b45347d68fdb086c483c7ca8f6383bcab87",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxathena.zip",
        sha256 = "e9de32abe3739697a3a92963c9eca4bf8755edfb0f11ac95e22d0190a3185f56",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-headers.zip",
        sha256 = "81b4d98d7ae4f92b2887180aea29ef1e780c5570e3fdbe08e02183e54952bd62",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxathena.zip",
        sha256 = "ad48bae20f42850938a1758c9f82e54c5cb5e286ad0b09adb701d700bd7f8ec8",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-headers.zip",
        sha256 = "b2a96f7ce07198b139face9dc341c6550d5044fa32f48435b50d986ea5c8ee55",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxathena.zip",
        sha256 = "dabb3d971cf0aee46d4b104d38abd47cc36219b025b299bfb9fea82e53deacc7",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-headers.zip",
        sha256 = "2451d44dc2a3d16ee315738336b792642a7b8dd8c4aef0f6b7b0fb80c0a527d2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxathena.zip",
        sha256 = "172d57588b8b7c26829fdc5a1ffaa938f65552a5e2f7cc28a510705f881de459",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-headers.zip",
        sha256 = "dac88ad40484aaa6721d190c23b33668fa11a86e32877458285c2ea678db54d3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxathena.zip",
        sha256 = "5e3311ef761b4c79ebf67f78aed423d1650f3477120d4c483925e6b4c9d2eec6",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-headers.zip",
        sha256 = "c919969657ce44a5a20cc84140997149082dbfda5cda7f170b68d2e94744921e",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_chipobject_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/chipobject/2020.9.2/chipobject-2020.9.2-linuxathena.zip",
        sha256 = "036060af780bc4d3b852d389a5210ef73df3041b9399762e7be8ea8291bb16e3",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_visa_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/visa/2020.9.2/visa-2020.9.2-linuxathena.zip",
        sha256 = "2cf83ce761145ee57b1b88d817cbadcbf1b34cf1759a813fae1cd135c23e6588",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_runtime_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/runtime/2020.9.2/runtime-2020.9.2-linuxathena.zip",
        sha256 = "a0aeff05908590b1c63071e02d635010bde54c3abb6dc016c78d5617a72c555a",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_netcomm_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/netcomm/2020.9.2/netcomm-2020.9.2-linuxathena.zip",
        sha256 = "6a3dac9d74fe20358812924cc3c2bfaafde189e2b07dc444ba5d38e46ca02b06",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxathena",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-linuxathena.zip",
        sha256 = "df0c97373fa3c033a552cf15d5b9afcd6d9231737f6bca8cf1c4df63c2d30658",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxathena",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-linuxathena.zip",
        sha256 = "85f430e7f14635e4556d5e9147d9dda7f0180f6b487f8959c96a635424b8f11a",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_linuxathena",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-linuxathena.zip",
        sha256 = "2a14d0ab80f42402824b675c94f138b3137745b63770867053154ee1b4ded7bf",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathena",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-linuxathena.zip",
        sha256 = "6acf09ae05fe95b11c24370c4cc6a95f0feb65097f25e5c7e39b5d21b775d519",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_headers",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-headers.zip",
        sha256 = "e5c5c8c3e72b399101ee1056279d72540554ffb149d9351036f8d977b36e3c1f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_headers",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-headers.zip",
        sha256 = "c3984a9c073125bedb1a299c1e8e831b43e728b83dbc10d8e0032cb74186fed2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_colorsensorv3-cpp_headers",
        url = "http://www.revrobotics.com/content/sw/color-sensor-v3/sdk/maven/com/revrobotics/frc/ColorSensorV3-cpp/1.2.0/ColorSensorV3-cpp-1.2.0-headers.zip",
        sha256 = "bfa7bbfcb32017ed4e4c9b3138eea559f715b7c1fdf8666ed93938cd85787f70",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-headers.zip",
        sha256 = "6482edc027dff06570e81747ff87aa8369b302122c38530b0cab0d2c11e83f80",
        build_file_content = cc_library_headers,
    )
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