load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2022_1_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-linuxathena.zip",
        sha256 = "3570c0a2a91e3547aae2234479b6f13528685abb5225c140e291cd73418441d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "475e890fd43367b851d013aff5ffcfcefae7db33656aee3c6a1367708eafe170",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "69e3bc8e316e483c728221d90d621acdae4741d027f8638ab375a4b1a9ca21cd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "b9428d9b41e5c56ebabec8f29739125c39fd07706ac5dc941648ddfa5cac6be3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "04a10cccf42b863dd8c220ba26fc96a0692242453424c103b67eab89181bec3d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "96abb44cf19fe7703618432bea13b7398f8240c8da334c35af11536dcb15ff26",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "f7dddf967e3aea536bf6c0f907984c2df20f0cc921d1023297a30cf553765868",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "b854025344262eb6a9b35e271d4de3fbb76ec317eb3f30143b6be55c16424963",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-headers.zip",
        sha256 = "29d9fa0496bf299ec8dc58347fd772230d51ce4f6a85f10951bcc18b20230dde",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1/wpilibc-cpp-2022.1.1-sources.zip",
        sha256 = "06b71a61100ba3822aa2fbfa1f6d3d7e796f2c16df82bc8e0f82818f0422b418",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-linuxathena.zip",
        sha256 = "f84fe5162cedce9a938d0bf2a0074aa76887e164be681f0d8ca29ddee1df346f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "c70b6a599f0f4676c39e14784619f1138b9a4ecdf8a4514ebbb8e56de0d34f47",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "01d7a62ccb613e27a84766116c4821409306821d2e49f26d5a86977b57bb6566",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "7d18a354244ed9b31952389c53e9f3f566e97566f8957d3433b16066018cee06",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "741b792ad34367ce3315aec8e1ae8f7a7618a3fa33779fbd2f0e5507b56b7d8b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "40a76101beadb6d6163f86f1c5ea0f1fd4a2c5de32813a67908f17dc6963fa64",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "ef02ccabb119bcfcdaabd3d443933b5749767e8810b774948387a798d99fa9b1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "81dc7f890417b43f636df556d86087e8c08a983cf50f8d280ec3b4e0000a2ee8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-headers.zip",
        sha256 = "893734817fcbb8b9758d94a972bb5f22da3da628c5ed5da86490ac2d31756051",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1/hal-cpp-2022.1.1-sources.zip",
        sha256 = "273cfdeb7750ec220c5b09d7da46e5b402a1a56edc01af3f5b614f5e20795bf2",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-linuxathena.zip",
        sha256 = "5d12b4de347ebffe1c7783b01389c11906f17917bd32539c216c5fa6d1ad63e7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "501ea6a79d24837292b063293dc2230522484b5eb424406f6efd7443484e2058",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "8ebadc5f2b7c6962ed1d3df945806087404212899bcf81ecfbd8dd4f7d5d1302",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "c50f2b002ce2a19bde9a394683d08daba441cd8bc4ae469186df4cd814de42a6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "4d0e5d86b6d285682971ad1dc0c350350862fd9adb10db26ae910c38e523a18d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "3331a4fd37e7c05fc409c17992293957de6119fac14a7fae3cf1e0abee3b85cf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "bf2bc6a7df448c405786ef877e3b8095ebe0677944c4cf2a927fbbbed0c5c3b8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "8431c1981baf3d20d072ed03624f999f3dc02a0f619dd61dae8c4d05d546207a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-headers.zip",
        sha256 = "49f6565ace351fe7cb3e591e8a391d8c515214135ab84f516e17293e0cb28764",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1/wpiutil-cpp-2022.1.1-sources.zip",
        sha256 = "9d4c76af759e70cf2063958c4d856e7e1b0ea60551bbc245fe0edb041bc0a37d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-linuxathena.zip",
        sha256 = "7b8dc317151aa66c0f787f09e49acb9d7aa1dd9f66b2021e9aebb79f3b78b507",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "45b64d7f8801dca368b89a025b94fd564bed7def1786ead44042b187060db054",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "d71ef6b5ce0817474e4d0c4ab92f1c44800516d3a6978c5f33b47eaa7e081a5b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "216bcc5c4e00dae92a6a470ba8920a7b0429a63472277565de7f2b03956f3edd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "aba23c0225830808c359497afd61b650fe2a469420862f7ed275478932374dbb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "39e62c37d97bf90077eedaf78ca5e18cc62db322695fbf5de9bed0b27c2f370a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "9494d27ca80a6a9bbc892e929da97e5c7d37f3788417ec03907169af28b5e815",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "ce070898bd5bad7f48974bbb9bfc5eccbd4b450d0f6dffb8d42d93e13dbd850d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-headers.zip",
        sha256 = "2df197a2301478c32a37634c61b7dd93676e668939eeeab4820a780b29b559c4",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1/ntcore-cpp-2022.1.1-sources.zip",
        sha256 = "f546244b35875f64c9d37e570f098f9977c5cca6d3d7ccc91615b88c8713fe69",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-linuxathena.zip",
        sha256 = "895bbf531fe2bcec0b9ad87311779abbb862c73b74016763990eaea46e207246",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "a39dc62b2f96c3c17c69c44356a4980b8789334640b2a43f0a43bfebd8554c2a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "511945f5988e9c3196f706243e5542f8ef0223878a74878104c44ff73ad5fc9b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "63378c9ca80ced1c5f69619c75ac6f230d0962a510131cfb0a898dc3ca0cda78",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "c9750d902aec05b007e030c50553bec33c5ed70874671f9d7cdb9180890704c5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "e3276046c92fe815364bab523c4719053bedf1df8eb79f62b89875a4f133490a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "984e6e32fdb80ffbe0b88faa9e88246690309aebf92e27de1d6d4ba7024206f7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "e96b718fb95b4e14b0b0db4d0ba9de996b95d4c111317237ba4696d8b698e36b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-headers.zip",
        sha256 = "db0cd454cdcfa592248cdfa6703ff5361a84a754e3530e91652aa41078ea0dd0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1/wpimath-cpp-2022.1.1-sources.zip",
        sha256 = "f120bd9f2e60d1da313017ec72630844fe3cd2232d927caa843053f232b6bd67",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-linuxathena.zip",
        sha256 = "2c96983902d1caef823e38f314939d4f192c795541bda0c263af65b0cadd8cb0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "0129b2e3079852f26b2272a7e91a824194f2f6ba345f0c400611fe4888bff03a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "fda5b67cf934647c493e4ae7ebc76fd1801f1ced107e58771af2d6658527d547",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "e4655a46c792013675d42d11506f86d5f6f5bf1d814db6f2aac43e8aa1fdae68",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "afc4b26a4e6f4a7456ac3002f681ecb6179c919e11f22b81cfa0581bb0ffe284",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "bcb92cddf2d66ea0a6d86b9dd75b10bdf7dd9c2b219fc4af106a335211e79cfd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "5edf5f8bfdc88302ea0fb64127f1d13899f2627c51cff5efc5da8fa65e9d4697",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "404d9819c42e071577d27d6e6775958b630047c5ec3591a18781df2bb42e5ac0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-headers.zip",
        sha256 = "603adee3cf0cb0dde90d530d29cfdb6f4cc239f3c64c93d0d07867bf2b54e672",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1/cameraserver-cpp-2022.1.1-sources.zip",
        sha256 = "bb585c808b383eae4ef1b24e4c879ed8b6a0c1a1e6c040f2b4c1bd0e17adf82b",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-linuxathena.zip",
        sha256 = "b660c4dafbb5b30255fce165e857ecc84ebf1e8e588fba0135447232b9cbf2e9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "fc21cd4f72b04f8e6ede40eea2a8bfc5bc0c5c540ffbce4a3370b993fce6fa39",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "857c24ed73c6b11d062e0bd233e8834397ce8ed3986917bb39e90e009a18ff48",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "c2bb50b94194a910c4cadad287dad7656ac1c6a81b2f19c64f6ec0625747ee8d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "8b87c660408614111d6c83f38c8c13d05c362ae8549cd47bc5f562a0ce6c8401",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "3518ef84638323b9c90445b1115eec0b2b856fae2ab029083d647f2dee2097e1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "d425c9796b20da2f87ff1c2947a05667e1808c49263698f89c02f6f3b5fcbefe",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "1b3ca858c86428c4c6258c4dcec5fb27c5ef9161fe7ab263224aea186205256d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-headers.zip",
        sha256 = "4e91cd9114e0498fcdda69e73aa323f2178fee4c17d78582c220f058f4999905",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1/cscore-cpp-2022.1.1-sources.zip",
        sha256 = "46740462856ba6e7804ff5dd5353e946910cfdf802ae80bc306c47aa26c6923e",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-linuxathena.zip",
        sha256 = "a0875ce8e545c99a809126e79ffdc3faccc5ed08aaf7822dd1b2f4c288d17fcd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "cf0c6ac0ef86872b7dca198fc1091547d104c8ec853b6569f7677563b97038bb",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "98b640dfb2e1b0282d851022e7119b37686f4c47f951a95ea0854664f5cb45b4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "653b1ed5802e531377af85bad7e42f5dfc50dcae66350bf853c0498e1cf941f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "c49e989b3730f6ad8b98d3b30edff0e85dd9da08d47b91d4dbbe0829ef9cd29e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "e33becf456e85a7c6484f2a8cf86253b9a31bdca9eeb954a522461bc006bdac8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "c312941aafb9bd74e3f4c629a15bc131b51ba11e5d6fba560eb97355dc6349fd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "050aec1e42262aa3e6d8e3c7c7580749f8a1eedd594dd013d448828716b3d239",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-headers.zip",
        sha256 = "fd11c98f1b9242e80e6fc864f8e2cc41a001ad464498c6cc95ccb26ec84fd6a9",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1/wpilibOldCommands-cpp-2022.1.1-sources.zip",
        sha256 = "eacf13f19c3940ccd35f24aaaffc378bf41779e9072a4ed416374689b0a8ccf2",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-linuxathena.zip",
        sha256 = "f64fbdfdf82f358463eb1d8333d73990d83bec8396a982e6d2d00f9dccee3144",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-linuxathenastatic.zip",
        sha256 = "64adf9dd211fdcfa092fb350d37a8c673d24dd7ddd20d99482008683ee1c6991",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-windowsx86-64.zip",
        sha256 = "bac67e8854fc88fb14d905556ba9cc953d00ebf01c39c4ab517826e8ce5cd4b4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-linuxx86-64.zip",
        sha256 = "2389cecb8b86adf7d4323aa86dc7f64d5c566e6b0d0e099a123618efd3b4c76b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-osxx86-64.zip",
        sha256 = "d56cbcbc6e656b27d8be5a4238a5758d699b24eca7195fca952b38df1db8e099",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-windowsx86-64static.zip",
        sha256 = "e59495ceb36f6e113dfd8154ac0f7478f59e5b8e1879f912eb9e4423fc7b6f12",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-linuxx86-64static.zip",
        sha256 = "5132ce51cf48260d82d3bd8fb239fd516675cb1abe3339086ebdb13f1d50beb0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-osxx86-64static.zip",
        sha256 = "86fa73e93a21aa676312875b8483a9f55e12e9c2885a28065ed3429e7b4efbb3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-headers.zip",
        sha256 = "2a36b62c3bd764974d23b507de6ea0356e17f46cd8dc67dd6b33acc7afa32708",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1/wpilibNewCommands-cpp-2022.1.1-sources.zip",
        sha256 = "61e980c42f0cf7991c4d0578751241cdf7c9a6fea9241b7d5fa631479ae4d719",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1/halsim_ds_socket-2022.1.1-windowsx86-64.zip",
        sha256 = "aa53a0537813eb8092b6052adfe8f8b4ed7b237ae3541f29001dcc5bbcad9fcc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1/halsim_ds_socket-2022.1.1-linuxx86-64.zip",
        sha256 = "99ed1a95e84f6fdcfdf9f052c8f303ac096a77865ee0fe4cd651d7b73fafe75e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1/halsim_ds_socket-2022.1.1-osxx86-64.zip",
        sha256 = "13b0aa8a8d579d4983ecdee33d89cdd720d266e5a6edcc57b2c5fef59b0ac943",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1/halsim_gui-2022.1.1-windowsx86-64.zip",
        sha256 = "1cbc198e1ed610614ca24449367007178452a1c2073536b307030d69cc7a4f3c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1/halsim_gui-2022.1.1-linuxx86-64.zip",
        sha256 = "d7c233f44c19d6775a42ab9d5ae0be7ad9644d5edffa74fe017ff4356db3a058",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1/halsim_gui-2022.1.1-osxx86-64.zip",
        sha256 = "9d8e2a1d71ab7b7e2db75a261665aa994e84e4505caf86ab055d2b39c40c16d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1/halsim_ws_client-2022.1.1-windowsx86-64.zip",
        sha256 = "3b56a59a07cb44dd169fa986c4c39a4cef8c8d9b69a9b35e0975bd6530fdc067",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1/halsim_ws_client-2022.1.1-linuxx86-64.zip",
        sha256 = "317d98639060c5174cedfe9a18b8f81db85ef193a60ecc938ff76e2529be7ee6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1/halsim_ws_client-2022.1.1-osxx86-64.zip",
        sha256 = "a600f4fc60598f42acb52c7b17fcfa42255e48033507cd2ad9e00b985594ca85",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1/halsim_ws_server-2022.1.1-windowsx86-64.zip",
        sha256 = "77e2066636643b61fdc2febe643f4dc5cfdd01f71680c17d6268db20c67921c0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1/halsim_ws_server-2022.1.1-linuxx86-64.zip",
        sha256 = "daab49d464cd0e18ab911470abccc7b70d1e77b4afe0874a80e765a99c93b988",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1/halsim_ws_server-2022.1.1-osxx86-64.zip",
        sha256 = "848464ca9a3d494de18e8f269d771bda55fa73e62cda6a1563e3d7c33ba07c7e",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2022.1.1",
        artifact_sha256 = "889c805d97a6be839e95ad21eb113621d3f8d24d9b73dcefaee00b492a507c98",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2022.1.1",
        artifact_sha256 = "27b8d98abffcaca0f493cd5bda9a1b4ab64e8fceb513b2241aab08d961951179",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2022.1.1",
        artifact_sha256 = "cd49ca18066d1eafa8877a3342383127557f594f302bd422f0ea21f850ca94cb",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2022.1.1",
        artifact_sha256 = "7b0f5c9d4ef7d98c0d2d735cb1af31461840811c6b8d5fd21d96a61ffaa1e34d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2022.1.1",
        artifact_sha256 = "b5065d34aaadca8968748df86b8850667d3a8397ec5977316d961de5311ebcc0",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2022.1.1",
        artifact_sha256 = "e3d2c1e4e46abf98ddaf2e1a77abdd76d63d18b634a212070ac1f350141d06a6",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2022.1.1",
        artifact_sha256 = "99427cbfd43c933608c7b243509f3f7ad43872fa0057defcadbc09d8b4bdfb46",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2022.1.1",
        artifact_sha256 = "ac38684b7ec825c627ca73d18e41cd956205250af16a90688c8d98e7d9a0c187",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-java",
        artifact = "edu.wpi.first.wpilibOldCommands:wpilibOldCommands-java:2022.1.1",
        artifact_sha256 = "a07ecd41b13bff0649a0feb30c9f62694145cc222ee1cb2c8cc57bca2b6bb0cc",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2022.1.1",
        artifact_sha256 = "d87aab4d067dbb9c06203667bb7a8c9d658d9aa731c91370446f57a75335ffff",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1/SmartDashboard-2022.1.1-linux64.jar",
        sha256 = "6bfeeb5a2f28506565f80636a04d234a52e3789081356dee5de00827983125f5",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1/SmartDashboard-2022.1.1-mac64.jar",
        sha256 = "d7b153f095de363a2d7a391dbbd3708903837032dabbe97943ab9225b1cfe5fd",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1/SmartDashboard-2022.1.1-win64.jar",
        sha256 = "ddaaae6bbccc1e1ea67e3e93dfc4227af37026b19bd54b2b53677d65b2189877",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1/PathWeaver-2022.1.1-linux64.jar",
        sha256 = "de5630b5f9a049a84a213123add1242feff072ce8ccba09e1fc822c7b497e8f7",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1/PathWeaver-2022.1.1-mac64.jar",
        sha256 = "35e6d0f5758cf46b01f446431f7ed4490708bfdb45281038d01c6f781c1229a3",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1/PathWeaver-2022.1.1-win64.jar",
        sha256 = "56a6cba57c2ce816ee6ebbb8dd34b7b7cd61c549d8863a3f43c504c354a0e979",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2022.1.1/RobotBuilder-2022.1.1.jar",
        sha256 = "db8c22764d8c1f7bbe1550f85ed64358197dbe7b7d605607a79f91ef6465eb62",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1/shuffleboard-2022.1.1-linux64.jar",
        sha256 = "028ce82032dade135b2a409f87616807c5df0465e31d68ea05c115570c42fd9f",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1/shuffleboard-2022.1.1-mac64.jar",
        sha256 = "a2f8dab93fd56d7a16d4aeccadbb0bf72a77a933255ed44c2465f27bcab3527a",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1/shuffleboard-2022.1.1-win64.jar",
        sha256 = "ada1cf7175f2e2a0fc19179193a4ab79b570f9b79dea603828e43c75e7f70785",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1/Glass-2022.1.1-windowsx86-64.zip",
        sha256 = "ffebb339b6db52878d56bc2cdf63efddd36e20a6bc9dd47ca3b326386f715a6f",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1/Glass-2022.1.1-linuxx86-64.zip",
        sha256 = "9b5f47ce127d3ed057e2196537c7c2e2551fe0ca2f86b3b8634400a651c65d80",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1/Glass-2022.1.1-osxx86-64.zip",
        sha256 = "e323e82116571fee1f58b18445c9eafc4158fafd8bb09fde44ae975987a91eb1",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1/OutlineViewer-2022.1.1-windowsx86-64.zip",
        sha256 = "76da23b24141864d5024f9fe54133eb4a92e7d5ba13fcbb3de8848f51b84189b",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1/OutlineViewer-2022.1.1-linuxx86-64.zip",
        sha256 = "df80f8ff7666ab98ab358193f1f7d8f851c6cc0e9ed8d435bc06ccdf9385946b",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1/OutlineViewer-2022.1.1-osxx86-64.zip",
        sha256 = "b41c91ff3db5fee9181e9ece4234675e7eb4eaa7d7ee9976ad61c599d74b21b7",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1/SysId-2022.1.1-windowsx86-64.zip",
        sha256 = "ef09ba600f83ea4afffbc826c54e4d0d80747a50082cea7ed44252061833cc7f",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1/SysId-2022.1.1-linuxx86-64.zip",
        sha256 = "29264caec4d730e27a042bdb569333a757189a62c639d10713d62295bc176dc9",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1/SysId-2022.1.1-osxx86-64.zip",
        sha256 = "d1f3f2d55154cc0644fba15d8c42a6aae33068f6e698cb6e9c6da0264a817f3c",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
