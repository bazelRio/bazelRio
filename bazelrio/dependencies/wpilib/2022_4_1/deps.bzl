load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2022_4_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-linuxathena.zip",
        sha256 = "c54776c48f2e2328467ee0a87b84da5a5170b79e100372071c06af33d1fb24ce",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "03ca3b45e7b5bf11f2a328d5b5e2f4137bbcd734752c3bafa1b3e167185cf9ad",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "d9bb402c78589ca16fa9a7b052d7f778d78f93050e66ddc076c00b3f8f614c17",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "10ec146208a1ebee18b4f97b3a936434482fa527b5f8dc49790c74e085a837c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "3df3d3f50814a68eeb3ab054eaaaf6c7f154e5ce99b6c9d888a3a0bb640f1341",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "ffcc5e5cead44f4e54f000140cb18bd9ef6e6fd5188ca0d8b4a0a36c6ced4003",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "df0dee2dd280c63e601940f0897f626e1bed05b73a1c71fbf34ccf574786b837",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "9009cc501a3b4f49fa5a2ffae93fc04fbf20e9380cfe9f02836aa29aa6a29b3f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-headers.zip",
        sha256 = "2bace11347c8ad7676b281eff860bacc2bce343753413d34f41f5a0533164646",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.4.1/wpilibc-cpp-2022.4.1-sources.zip",
        sha256 = "9e350fd40baf05fd7a6e0bafcf549e642fad764ac060df26f14d5139f3b5d7ff",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-linuxathena.zip",
        sha256 = "dbc000d7305841e5ab09d86b5f2d2cfd5dcd07ad383809eaf3444c02367c93f6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "50144baa69de1e29efd69b7ea4fbf6143a323ccef3e63e6466a2ff664b251ea7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "d8a6b469308e63c79df42dfb49eff8aa65530bc99b5e748e955a35be5e9e104e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "5d50d46b563b554feb10a6a7a54cce68172008a7a336874d8332ae390e4bbbb5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "aef7e14f9e18eb524b747cae10934363b46086e9c4d42d945a132f09d5c6baa8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "4f4f7418b3be8743a2f0977a58e8338026b06c01124a194792db6ccfc3438dc9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "a1fe578b2f65a986c74e394adcecc4c42be06bb86e573bbf9cce99f28034ce10",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "a267ecbb19164366a5d09d3b6da37f721c68427a30ee47baf487ae58e9200cd8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-headers.zip",
        sha256 = "c06dfa93a47d2c400f0686c3adaf902e9dd0d7ee810e3406886e07e83ad8a238",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.4.1/hal-cpp-2022.4.1-sources.zip",
        sha256 = "fe5c6b7143d09c9b99d7381d26d6104edced9376dcdb33fed06f0fe1ce8fd99f",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-linuxathena.zip",
        sha256 = "185ed776a5a8de78d817a39a3c6da313623624d5c8beff25e48971efb9705483",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "3b922c9f433005bd7c9ab51a50d47efd2d4568e7e628be9c5e2bfd04a0c37a93",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "b7aad4d4562a86a89106f9c28043ed78c785fe8c4715fc9de677eebffa232263",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "17db0ec3133fea1588d90f8f0c8c5a778cc1d8a16c0c667f6a9b0ebc6310cb82",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "82e3d024065b9d3c875d99f1b5e1c0ae2b92a1dca63ff3f514c9015cf2939b1c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "7183a6b75856632ab4e50cccdeb14ac0acbb42d0c7544b3225183999659108bf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "22989250b9b27e2c337929a0f9383c447b55b67688e43abc417cc3eafd6f5ce9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "dea966dcbde121b1d1c1649f395c6d399b5bee5e123c0867e27cc64b4fc881e8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-headers.zip",
        sha256 = "942259f211f59ec6e8e72ef5b1991ef4d4084c6cd7bcf52b17d5a22e5377340a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.4.1/wpiutil-cpp-2022.4.1-sources.zip",
        sha256 = "3da422182062d828aa0747aff949ecd2702564608982e7af82af07ec0ce0813d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-linuxathena.zip",
        sha256 = "f8ca79badc438c20ed6d690b5a6c4c4e2d1a2c053c2b2e98ffa9dc0da0b4c9c7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "5ea6da5062a9f1708de66e438f979bfec0c5b436b00ece07048ca414a6ac20d2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "90753f1c38c0d6eef1654d76d47cf582f19151ff7d16fb77383261b74b3d1adb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "b8d59db14bcc353b0f2e48407d4f54d6f7c8949c268a4dbed7ac7222b1b261a8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "545920724653507d075ef1314108d0479d4e863c08f9f72b2b68974c701e9ddd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "db05ebf83f09e1bffacbba8b25495039350293d1454553e661430ef76dfda25c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "afea5f2d9affdf5209580c83f4daab8b19a959cbc8604b87b6e48dbddfb8c50b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "59ea9fe72487798d8f9629efe73b218570b53522f30147e05c8411da966b375b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-headers.zip",
        sha256 = "8f2327f191227d0bffdf0d41c7362333ede63a97b751c62b06c0ba243fa9ac2a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.4.1/ntcore-cpp-2022.4.1-sources.zip",
        sha256 = "913519b9aa466584e8f5c7e38fb1297ab3dccbf2744e2e038a602efd2d217486",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-linuxathena.zip",
        sha256 = "3e5b0dd54681e843f016a7a75d1774784f37163ef21c95b0840389a6c8de16d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "cee2cffeaf2d865fdb5664fbd50944a28baecce7c76721af2bb53cb698cae47c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "66989de51f3624572a3e6edaff9bbcf980076f5d3312022b1e19b5977b7f61f3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "80bb40c420fe3da5aa8c1e07fcae199e4cef97d5903dcef66d5847233a190c63",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "c37e0735b12aaab1a95cd5906ad8eeeb2320caffb486b57181585fc8176b46aa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "26a257e1898f754710c8168df80666d47ee0dd350cd0dc6b5212d6d6cf883c96",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "797d0a2580314316e9894a004534c86b73863990991585c8596e6ab53d9197bc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "7b92b55f95258da6e00b6b69848648d19f1b262421d8bce0e728f2188b4ec4ac",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-headers.zip",
        sha256 = "ba1baa5d7d2b206ca7f385d05e50347ae33cbfb226d33650b3a8b5cdadee2361",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.4.1/wpimath-cpp-2022.4.1-sources.zip",
        sha256 = "653be57f7045b0d295ad1522c151b7ad7c13769269a791ca84a70238b939f597",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-linuxathena.zip",
        sha256 = "239464512911b974a7e57469e0a78f2463fc4a27876c5ce1e3639150794462d2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "02d89da364948fc98c6de02cdbe675c68e9e5b4846b660bb0920371d929e0d86",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "6c713cdc53134deeb93ea73c47e2ddc72b05ed8d0505e1ec910721bc5f0ecf56",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "dcd87be0d065fe3567e2829f315351bb7a73d27fe8d709d6f007bf4493ad882a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "12a727d0a12b4a53640a49420dfd9a2ef2249f9b4bae88e624a45e60a64f4078",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "387b554c28b8d9ccd8b8f2c53ab1091f826cb8997ad783ee4b6074f6b3f8ef16",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "0bb3880fde6b3d2de1611607e4495d84c05ffb09938d0092b548b805ca489960",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "c4521bb3b2d9ca5792f88f3fed31cb15e4cef201ff6aa85658d4fc352de49d9f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-headers.zip",
        sha256 = "bd2f42c7d5aa1a42fb668a9f084b59db450e378f3bc6b22fc2a4ee3540e450f2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.4.1/cameraserver-cpp-2022.4.1-sources.zip",
        sha256 = "18d940af537c3141df5a8e04a34858e2dc7cffb263a68e8917ad4c59531ae2f1",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-linuxathena.zip",
        sha256 = "16cc25cfcc27aba00276dcd4354f4180608c6c1d663cba2cb79bc788f19d07b4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "62cc2d51b71831e70688328bbf68d335f71570fdadc882c52e1bd24f8e590414",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "d10a45d1f359fc272d30a50b578c47b00637e1b505224f6338b1a10aa30c29ea",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "cde6a69116445679be91c4de45be888ce6e31ee4dbba7b73db47d9c468426afe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "262918fdf626345c43fa3354ee8c6dfdc0dc5172d16c0e81eb19febf776bbc48",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "4cd5d4401ce481c688a563b4a5cf5720b396d00ec1d53241b21c19676522933a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "16fc162045cc4abe308fb9f60e91a7fc6f85c88cc8fb2693a0709257491dc1db",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "c5992b1f3eef8278673c5fb644ba74b968b33d23fb6ed13709236e377585f89b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-headers.zip",
        sha256 = "060bebd3adc43066b751df1efa172cf72cb63376567647c993e74ec180f6dbd0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.4.1/cscore-cpp-2022.4.1-sources.zip",
        sha256 = "739fbf928732cb26632023513de830e5e7020bab6dabd48cc4956ac20db8cdff",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-linuxathena.zip",
        sha256 = "e8bf1ff25ab5e2efe2e5b8199bf64c35362e7167aa5ee787d2e1da9da5a2f05e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "adf51528e460a8d415d860f77eb4897cb3ad3eb4c102b479d386af35d740bfb8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "94631a60d9d2a6b8d24a04fc1a87469050b78b0b1cab32ed6c5c7c20d474f6a9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "a1e7f9fd434cefd6baa24e2bb28bf5cdde48bc8f1fe62e880dfca4e9795f4a45",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "ee0f720c5c8ac28b9a5a2be5af457167519eae800e678a2e852077874504bf87",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "2475991414fe0b3f4fe6276a4b2c9aff3f2938853400f1039cae3580516ef2e9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "804cc3b58d5c9a50af813e7d606b660166340837b03b1a7d7eb56f592f52a7d1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "e768b9fcb66a004cc9b3c1556b0bcb88695d7354a8145c7a92960c07633163b4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-headers.zip",
        sha256 = "e483109a7952eedc04757a9690a5ca4a57c1eea705e2fbd353816a35d6290db4",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.4.1/wpilibOldCommands-cpp-2022.4.1-sources.zip",
        sha256 = "790dd1a22b3598039d80c6d219fba019b49ddde5412fb661cf719d1cca18c381",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-linuxathena.zip",
        sha256 = "ff3879bb6113b6bae374996d1680ca9cf113bff22482bdf3967c9cf107ae2a5f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-linuxathenastatic.zip",
        sha256 = "2a8fdf7cd6d242b50856ff787dae4824297aa5170bef99cf97e11dbbe459135f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-windowsx86-64.zip",
        sha256 = "573e3599ac7e69b9c7c619587516ba8f901bfaeae061655afdd9534a00d780a3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-linuxx86-64.zip",
        sha256 = "5017c957c7d2217a83c7849bbfe1b59c9e62a2b041f16aeac57a6343c250dcf9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-osxx86-64.zip",
        sha256 = "b0435d76b3ce207766c0d7eb5bf8cdde93716b01405cb5e76d0d275c6eb025d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-windowsx86-64static.zip",
        sha256 = "a7b4ab47d17765da551907b3a1ebf60bc73f30f10a5503f591c2634426bf1b3c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-linuxx86-64static.zip",
        sha256 = "22cc59b24118c497875181c8310cb281b4f15f2b8247a19fb98521771059fec6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-osxx86-64static.zip",
        sha256 = "972b5dab0b6701f8e4a58477f5eefdcc504c7095d96577b6638cc8adfd20fe6c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-headers.zip",
        sha256 = "5de1aebb74722bd6a31ef3d3c89a101062e95ebcf5550d876f8ff51909de3fff",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.4.1/wpilibNewCommands-cpp-2022.4.1-sources.zip",
        sha256 = "189c699b31465d20e025b55ca11add92e2f6fc34073d6a87d3d8542037d8282a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.4.1/halsim_ds_socket-2022.4.1-windowsx86-64.zip",
        sha256 = "cf17a1d23d456293649afdffe0c491a312d917c59112c7b8a039952488e58bdc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.4.1/halsim_ds_socket-2022.4.1-linuxx86-64.zip",
        sha256 = "660b89907fa8c5b7b8f1f6b25d2872695792e4f9fb719de203e3ba087cc46b0b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.4.1/halsim_ds_socket-2022.4.1-osxx86-64.zip",
        sha256 = "18918ecc5613380ca4dcd375c06f690ddd86e0ab4e59b6b5c9e29c6d1b348b62",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.4.1/halsim_gui-2022.4.1-windowsx86-64.zip",
        sha256 = "bd998732d7c48f2f4a519da107f8a98dfff46e40e18fa6a278e508cc6f8ff803",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.4.1/halsim_gui-2022.4.1-linuxx86-64.zip",
        sha256 = "21ce18897aaaf3fafc12581598025073e5034378ddf55cdb094f9d0dfcfccf7e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.4.1/halsim_gui-2022.4.1-osxx86-64.zip",
        sha256 = "796d32875d73cee8830e7451f23230c9c4763d3690e62a1329955d88de388c57",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.4.1/halsim_ws_client-2022.4.1-windowsx86-64.zip",
        sha256 = "f310170d0899b2c6c8359cf2546c474b8a49d5bfc704e051521bb4e6ef2cbf2c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.4.1/halsim_ws_client-2022.4.1-linuxx86-64.zip",
        sha256 = "ce7db93bff64c2845be334fc2d1ebea5c80550c6dcc13acf524910ef870cf6c7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.4.1/halsim_ws_client-2022.4.1-osxx86-64.zip",
        sha256 = "f2955f6f59dd40f094fdd10020c52817106d6b3d5a059589bfe326c8eaf950fc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.4.1/halsim_ws_server-2022.4.1-windowsx86-64.zip",
        sha256 = "a1e2b3c75e1f12e471e53775416cff084bb1d376055feed05feddab63320d080",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.4.1/halsim_ws_server-2022.4.1-linuxx86-64.zip",
        sha256 = "3e3a434708302cf1b3710eed2b575e6e52b53c041602f9ad0ebf5fd548db068a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.4.1/halsim_ws_server-2022.4.1-osxx86-64.zip",
        sha256 = "22d3c7380acf4ee76aec8385354a5566ff6e1d95177d19435f2370478eaac01c",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2022.4.1",
        artifact_sha256 = "43e169ae1059fcac16e6b571e6fbf7082f6d66ca66058cf45e86a8d793a1dc8a",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2022.4.1",
        artifact_sha256 = "298fec2cf559cdfc429443220647379b6cb0cc2c5c9350101df700eae14f107c",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2022.4.1",
        artifact_sha256 = "eec879c5651feb31474884ad2ff077bf51dc44e80a18c14f5ec3fb5065c0285a",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2022.4.1",
        artifact_sha256 = "2387ec35107790b045afd2f5db2bcab69aa36875a040c64f93a0cf5fa3c04cbb",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2022.4.1",
        artifact_sha256 = "532d56396c68101dd3480b41364452333856cc695ebd907b0ba5c14b5053fada",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2022.4.1",
        artifact_sha256 = "843adba528e74f9f77627aaf8a38a891f04a3f820aadf20ee9dd4c9bd9b003b6",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2022.4.1",
        artifact_sha256 = "cb7575568d6dbe4af180877a2b1e62ce7fc967da5c7510c60ea8b09b35b7b87b",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2022.4.1",
        artifact_sha256 = "674490e1712ecf40d1e6f4065837f4962a0889a946ab973d877f7fc6dc0e9cb4",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-java",
        artifact = "edu.wpi.first.wpilibOldCommands:wpilibOldCommands-java:2022.4.1",
        artifact_sha256 = "3ad6e309304dd5220bafa1c05b8bd9fbfc1a5c883f7c8171d4daf9949bc52c18",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2022.4.1",
        artifact_sha256 = "79b656150a50bdc8d90b400895fa78f42514b0f96297bff1bb3db38afb443adb",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.4.1/SmartDashboard-2022.4.1-linux64.jar",
        sha256 = "98d5f5224b18de70c8d2007dfc0c1d016d9e6f4096dbdad4855eb39581588d69",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.4.1/SmartDashboard-2022.4.1-mac64.jar",
        sha256 = "ea5e4f80dfcc188abc3f06463868a450636f67d0be93466381f757f66ad6aa1d",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.4.1/SmartDashboard-2022.4.1-win64.jar",
        sha256 = "2b8711273773eb48f93f3762c96cfed7421fbc86ff7bacb5630ae8b00a2f0fee",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.4.1/PathWeaver-2022.4.1-linux64.jar",
        sha256 = "7d879fd19c1cf5f4cea895998cf4213b51865e46effe3d9a46e7492b7ddfb2ae",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.4.1/PathWeaver-2022.4.1-mac64.jar",
        sha256 = "1f67ff04ed45347f1e186a2c06e10085b25f6449cd3264257497029c5c3e8944",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.4.1/PathWeaver-2022.4.1-win64.jar",
        sha256 = "51517f6dc96dc1d393ce5b1e591f136670d236b117f7affd2e50a8c8575b60a5",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2022.4.1/RobotBuilder-2022.4.1.jar",
        sha256 = "f904d707e787658aeffe0bfea5a2e838eedaa987a1cdfca9abff1ae7d1d8ff4c",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.4.1/shuffleboard-2022.4.1-linux64.jar",
        sha256 = "892837c44981a904daca81cc5b4abc6de981204906026174af41da5db290d6d2",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.4.1/shuffleboard-2022.4.1-mac64.jar",
        sha256 = "b1063c70dec55b9e21d0c3b290a32f6559e2929aa3bb4786a58e495b47802cce",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.4.1/shuffleboard-2022.4.1-win64.jar",
        sha256 = "292bf0d0f1c7c1a658565a9386e7a0847d6e38f911ee2ff72a1a6d6602f433f6",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.4.1/Glass-2022.4.1-windowsx86-64.zip",
        sha256 = "1d9e0bb42a8f6cc1743acde1ee184de8423f544701ead85a543c29f890c364df",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.4.1/Glass-2022.4.1-linuxx86-64.zip",
        sha256 = "a59fe5318897fdee118f2c40c628a7eee5f0318d34aa18f9535020a683eda013",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.4.1/Glass-2022.4.1-osxx86-64.zip",
        sha256 = "377b06c5efa708923f036292b1eb9e033557deb86771a5df63db6719bb102216",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.4.1/OutlineViewer-2022.4.1-windowsx86-64.zip",
        sha256 = "9f1c1261fcd00b8b5bcabb4d70727cb9686a0a10fc96f79d0672911f3ce81c19",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.4.1/OutlineViewer-2022.4.1-linuxx86-64.zip",
        sha256 = "035548b2f658ca4eab6622c7a1788c986a13d16d8a8d71b61ca9f2bdcdfce0f0",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.4.1/OutlineViewer-2022.4.1-osxx86-64.zip",
        sha256 = "fac328f554dce264b4a11077fc7081910e29f2cb319464d72af5e9c739122d4a",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.4.1/SysId-2022.4.1-windowsx86-64.zip",
        sha256 = "df336afb861f0e4120dd6f1f6641c5c739f23e849a4a169d7a6664370b13c899",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.4.1/SysId-2022.4.1-linuxx86-64.zip",
        sha256 = "64e2e9753a7d56ccb51c6e318ec90130a987756316f7164047341a75aac869ea",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.4.1/SysId-2022.4.1-osxx86-64.zip",
        sha256 = "afa69b29c14748e4a048b0a7850a71118847882a3447b566e0b4232b9308944f",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
