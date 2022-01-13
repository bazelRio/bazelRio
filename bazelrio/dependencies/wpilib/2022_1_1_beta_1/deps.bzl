load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2022_1_1_beta_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "c926798f365dcb52f8da4b3aa16d2b712a0b180e71990dab9013c53cb51ec8c9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "134d58c2d76ee9fc57f2e8c69b3f937175d98b9f33cd7b2f11504f2b16ca57a0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "634688e85581e4067213b8578b8f1368aada728e2f894f7ac0460e60390dc3a6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "9cccf85bd6d0a576174d2bc352eda5f46fbba2878ff74a33711f99c21d0e3467",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "042f30b8ff66f862868df5557d38b1518f85641ad3b824b13e5804137da0955e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "19076d7738bdcf3351286750abcd63cf3b9be3ae094975c1a44212d618ffdd93",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "c1a67b54dece57acefc92a888f85320b1623fa1d3e55b6b36721841c0a0c8926",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "88834ad637e9c7a3b92c1dca72a7a18b00f67e711ab4e51125bfff44996c5331",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "ee96572633364a858348ecfd781a54a915ec44e61ff66c74d115dc5a25667788",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-1/wpilibc-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "3811ded44c6350f51047b115a50c713fdeb81e68f47b6fb0c17131117e7d9f9b",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "ccb9f76f81afde7100eee4940a19d5ccd5cba8a558570b9a1f1a051430a6d262",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "9711645efa98f61a9634ce2bd68a1aae56bcfcd9944b8ada2bd7564480f5d66e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "2ac30bba83f507dfa4b63bb9605153a5f40b95d4f17ae91229c96fe9ea0cd4ac",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "da54ece30b3d429f1a6263b90a316e9ab4f891176412704be9825225e39afaf3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "8299fbc2e2ac770deabf4c6cd37cfa1a8efef9fd700a3f2ca99d7e1c6a6ec40d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "217867fabddf6331c0aa950431e3d2c6430f8afee5754736a96c904431abc557",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "c090c7a22f179b0987fec03f603656b1ec5ce1666ba4c70ef8473a9a7803a075",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "0386e15436bd22dffb4e18829c0bc58c19d7520512bc7c9af92b494ef33f41ce",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "a4f8a16b4082577733d10ba420fcae5174ceaec7f42260fb60197fb317f89335",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-1/hal-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "8913794392a9a8a33577f454e0ad055f9985d9b54dc7857e06b85fc2944d5de7",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "0959646557ae65cc3be8894ee8d39beb7c951ffd6be993ab58c709851069bdf3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "1fb70cd539e29463bb468a5fd4f8342fdbfd51fbe123abb3183eeb69ba18831b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "cc10bb439a75f6d97f89761ed27cc1df12dffd330d6fc052383a21d8a9575ffb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "fcfc83f420f57549d1f8068edd1e1182f2c5bc7562caca6129326ba116621d5d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "4dfff5233bb7b0b8ea3c4b9eefc31d0c17fd0962ffaf785ec87305bd6b55e5da",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "3c54a5440519e4001fdd3e3e4c7f4a5c9cc26c7a4d6910bc0a5b66e5fa4459be",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "099125e210b1a3ddcd1854bbfa236dbe6477dd1bd6ed7dcc1c95f12b0e212a61",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "fbf604a990af907944923157c20d33d3bc2050cf40a719abdd3c14344e69f4b2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "6efa9420ef875cd69a4d3d55ebfde2b9ed0ed2bd61db9811dcb2e274b0ae56d8",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-1/wpiutil-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "ed55b6ea290b075a9a7f1c94852a50c1a5e28ce3e01d3cab713811eeca03803d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "099448b290666ca9d594e28fb21c5b4d199b31669d61d8d26b7b837245f74dc3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "aad15ca5bd6976730465ba1896f07576529e8384a2a3740ab60345a430ff0bb3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "389018e731f998c8fe2ce42e80cf2eae60935a386d3c40af54f7cf9159e9a70e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "98483d6dea79148389d25ce0ece2ea474d43a041d39aaaf3998bc51a2b109b53",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "07989a5109f6aab4fab038fb36b25511b965d0179bdcf7ba13b6d200d77592e4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "c0acb88ac54d06cebba5374aa6ef10ba9f4f6019c1352718c5d8ce70232a55d6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "5b3623a3f6d87f33d98cec7d6e6a7bb1983bf43f1056d9983fbb4c15d269821a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "765bdd0196a487125b4076dd5eaabfaf2c4a0e37391a975592c3d141e7ae39e0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "403322df2c7637bc0c47e5437d4fea678962375989149f5ae6ecf81810b80d67",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-1/ntcore-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "db0e677a833054cccb0df6eefcad8888970f2b9c65a7b0c6211ce1969c32acb2",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "86090d1cde7a10662abb7e163f5920e743ca0210a72691f3edaaa7501bd7381a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "b4d6c1a57c398dd131baa5632e66257d139c22620b31637abfb9cb2eec641fa2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "064beaffc16feee23c01a868cfc6b548537badc5332a0cc753f5714dedb0f6d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "403826a614ed8a46720b52f89d8d337ce6cc89c55bddde29667af65b7f1d9d79",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "e89d7504bea9ae7007bc80b13d595451e2486f449dd3c1878783000dcc95fc80",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "48ebd0fe7e162ac5a624055768e07237278885657697e8533cad5bd8656b5373",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "6c224639a477f789cc4198022bf07014ccd28a7643025e8bcd8157d300d42753",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "3737e59c8c0d70b3926426f3fba0c3f7c9275d5c6dbaf68708631578de6ff8a1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "5dfd502ac49fc6f0fa33727b2078389ac3616ee995b9878b34d85e07d908ed0a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-1/wpimath-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "edaf77f5ee765213fac1c39169c8cf7568cf6a0e1fe1841cea56385f10a4483a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "47885af110d9faca20b952fcb952563ba0aef3dd7aab9b9693712d63b96f46a3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "ed2ba5e2be2542de80ae974f29b47e9a788184425497e88b65ca6525d3ea0ce0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "1a2860600a2265578b5eb4ee04bf54286fd6a853a46821d299e40d2828fd5162",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "5f6e5dd516217cae42849a83b58a4072d4df0250aac0d5c704cba400cc7a2b7f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "85c1840acbb9592776e788cf352c64f0ceaa2f17167290211940c0e6f6affe12",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "c53615899910ae011f21824ec0cbfb462d0ad8a8630ddef9576674bfa6238d32",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "414c15f0fcc21ef814a515af73319284193817784766e963bf548ea088c32912",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "598281e2232aa2adfa56a64359e2c26fde8ac211fac2e76ef8bb28ce7875759c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "0c5abbef3b75a0c628a25fd5c5f014d1fd13f4e6f9a142e3c44fdcc7ce3ee5a2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-1/cameraserver-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "e4c046e19b1aef915f501dcfc7944abd608412d080c064d788610f5a470d0a28",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "382221f7ba2942cf74e96a56a3a2d8d2a581ff1a187d4fdc26970520ffa36eaf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "98889140f84057385ca8263405ade9b11a552ca3bacbbaa327f32515d16e0bec",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "d5bbb852db8ba3345495bbd1fe865f3d650a13349a1d0fb8c401de702bc1206f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "ed33579479ed14b317995507782a35a18c49569705d72f5118004093c6b9a7ae",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "bb2fd292aeb59e3c05b495cdf3889885601fc1de5520597b779dd1bc90976db9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "be3c019597b8787c05d0c0c82096466a00d622e8bc8e1cb58569dfff28ab66d3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "dde2724d4c88fe659aea7b855ae4ab55105963c2a2f5db6ebca93f6f49b89a42",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "47d3c6b7fae8808eda0c31a148890f43cbd7093b499d869bb48dece5ccb6c7f1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "95d3cd2305e89dec7d82e6ece371d95b1786ac456ac6277f6a2746febeb73d1c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-1/cscore-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "ab6536f368e736c97edd79ed018a129549fa5cf9810b6bfd509a267fb17e594d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "475483064284e6922327b0d58bf3511ca4671f7b527d37a014217c995516d12c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "a70860defafb87cf2f09fe5a2495ae5d7332fe5de1a46c4832e06febfca3e3b1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "ed3a372a0ee57db77f9021f3494e52fdd36afeeb076211d37a4df438a299b3c9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "4f60f242a3fc52aa409266ba9590c61bf6e4f52c88d2da863ef0d69fa0144de4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "66ee7560050f7fd4465642da518d3e05088e5417b3d0fa4f715f14ec25b3b4f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "4257f7c892132c3253a3dc35afbf12323cd1fc715537278276e1a6db12b1c002",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "70276571e289259ebe07fbc68e1747f0623b86770bf847c6af3cdfc71b297478",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "60246184ac373a5d377008f80f9a49f1a1dd973cc7ca820b09af9dad80731d24",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "9d5ab40d7dce760faaad3798c00844a1d2f1235695266edd5445934a8c3ecf7f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-1/wpilibOldCommands-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "cfb4874270dcefd3bffa021ecbc218ff4f21491665c8ce6dfe68aa3239c8f49d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-linuxathena.zip",
        sha256 = "25f8e6c5eeaff7b8131d26b82fb6b7d790e1c69d794bd73397611f575decd9fe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-linuxathenastatic.zip",
        sha256 = "eab92c0b8828b775edfc8a56dc12cdfa9c847582ed9093022308fbec1f46b647",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "623ebee022435a80c1d63ed6cc3f4f5086c156863714b924bc789881af5effaf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "67a59105f1e279035197221c4512eb746a92cc830af3eb918ea2e8a48d0d557c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "22e3d809e7509690c9147f9c43ef8ba4a1acc52ac7b020a46ac96b55fc534f78",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-windowsx86-64static.zip",
        sha256 = "fb3deee37a2e9e9157f3ae4fe9631cee54f776081be601e8da8f3dca9ad0e578",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-linuxx86-64static.zip",
        sha256 = "f7f3af6846e0ceaa334b9332802c6b02d6e3ecc471f163ec78e53d4a3f1a15e8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-osxx86-64static.zip",
        sha256 = "d035191b46d152d1406337394138c989cd1ebcc11eb15ad407ac234ba64d5789",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-headers.zip",
        sha256 = "136f1a8bfc41e903cb63d20cc03754db505a1ebba6c0e1ab498e31632f28f154",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-1/wpilibNewCommands-cpp-2022.1.1-beta-1-sources.zip",
        sha256 = "13de71a91d7ad1a1c1ed8ae900ddba97f279174c3a82ab5c277cda6eccf2585f",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1-beta-1/halsim_ds_socket-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "8b41bd26ca874ff3d6d7d4bf34ae54d6dfe763b0611d6a25d1cdf82db4d65b55",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1-beta-1/halsim_ds_socket-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "aa8015098b6e3dcb71edf8a3bfb2aab92f1e0360b4045538f15592ead24cf2e6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1-beta-1/halsim_ds_socket-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "dc4a908e576ac0af2ea0ac4147da13ce541ef114b90183823057bab7506e8d8c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1-beta-1/halsim_gui-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "2eea12aeafe46a57589533eedd8693f8e15ec973c68001ec78b14c9744f56fd7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1-beta-1/halsim_gui-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "da89913dd83ccaefb65ce3056cecb2ccd6a01cf1b3fbe8ceb868b8eeb2a93e43",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1-beta-1/halsim_gui-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "57c6614f08b60a1a1274b293cdf559166b7725b0079b5f3a81c828e65938b52b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1-beta-1/halsim_ws_client-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "38e14c93b68d118ea1d5ca963ca44d2564ce6a0182c345b6e46a17e033c34cd9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1-beta-1/halsim_ws_client-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "574a865b137ee07259b0320b0b9bb4f173afd14e08c232a98fac67a2e2698c82",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1-beta-1/halsim_ws_client-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "95884c7e85aa2abfce610036a76f18dd29a91e12eef59c6f9dad08ac137aab4d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1-beta-1/halsim_ws_server-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "a32abc69d6672cdc6ea0c91369aea67db4d1658762d040a5e6fe8e095562e919",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1-beta-1/halsim_ws_server-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "04df8fb4270e877569e5fe5e180ab00f7f9b4b9e79007edfb1e7e4a8bc7eb48a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1-beta-1/halsim_ws_server-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "838d001c5a43d6a1d8e1fd30501879d301d953e8ab9ca1727fcb3b0887ab6e58",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2022.1.1-beta-1",
        artifact_sha256 = "9c6376870f388fec8888eb0e50c04b3047633c83837132279d665be261a84bc6",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2022.1.1-beta-1",
        artifact_sha256 = "ef4869b33ad1ec3c1c29b805bf6ac952495ef28f4affd0038f0e8435f4f7e76f",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2022.1.1-beta-1",
        artifact_sha256 = "dff7d3775ec7c9483a3680b40545b021f57840b71575ae373e28a7dba6f0b696",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2022.1.1-beta-1",
        artifact_sha256 = "84f951c38694c81d29470b69e76eb3812cc25f50733136ca13ce06a68edea96b",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2022.1.1-beta-1",
        artifact_sha256 = "c06b743e2e12690a0e5c7cf34ade839d46091f5ecad5617c544173baa5bacaa2",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2022.1.1-beta-1",
        artifact_sha256 = "5c5889793fb13bdf2e5381d08ddea6e0cc932d8b401c01d9cb8a03de71a91678",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2022.1.1-beta-1",
        artifact_sha256 = "31006372443254e750a5effb2e89288e928b6009a2a7675da9ccee874bd8246d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2022.1.1-beta-1",
        artifact_sha256 = "23a0c922dbd6e3a5a7af528afa13d19419aa1d47b808a3ea3b101a1030ad0073",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-java",
        artifact = "edu.wpi.first.wpilibOldCommands:wpilibOldCommands-java:2022.1.1-beta-1",
        artifact_sha256 = "81dea5a894326acca1891473dbc1adec0b66ef94e45778799a566bfe9b7c7f6d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2022.1.1-beta-1",
        artifact_sha256 = "3842455781a71aa340468163e911b166573e966c7d5fbfd46e8091909b96e326",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1-beta-1/SmartDashboard-2022.1.1-beta-1-linux64.jar",
        sha256 = "fb421832c106f6f9ebe1f33e196245f045da3d98492b3a68cabc93c16099e330",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1-beta-1/SmartDashboard-2022.1.1-beta-1-mac64.jar",
        sha256 = "55d6f7981c28e41a79f081918184ad3f238ae99364fc7761de66a122bd32ee47",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1-beta-1/SmartDashboard-2022.1.1-beta-1-win64.jar",
        sha256 = "afc725e395bb97d71e12ee89aeac22bd3f5afec724e69f24dedd2e8fc8e6622b",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1-beta-1/PathWeaver-2022.1.1-beta-1-linux64.jar",
        sha256 = "e28f067e874772780ce6760b1376a78112cc021ec1eef906e55fe98881fe0d29",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1-beta-1/PathWeaver-2022.1.1-beta-1-mac64.jar",
        sha256 = "33dda4aee5c592ce56504875628553b0c1a69ef3fc6bb51ecff111a363866cda",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1-beta-1/PathWeaver-2022.1.1-beta-1-win64.jar",
        sha256 = "6a5058800532570a027de9c70f686223880296974820b736a09889755f9fecc7",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2022.1.1-beta-1/RobotBuilder-2022.1.1-beta-1.jar",
        sha256 = "d431daca5c2c24ddd0a147826b13fb0dfdfc89f3862b9bbda60d0bdecd188e0a",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1-beta-1/shuffleboard-2022.1.1-beta-1-linux64.jar",
        sha256 = "4c2862156bf207c87d5463b54a5745383086712903eb8c0b53b5fa268881b5ed",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1-beta-1/shuffleboard-2022.1.1-beta-1-mac64.jar",
        sha256 = "a28e1b869c9d7baeb4c1775e485147c4fb586b0fbc61da79ecdea93af57b7408",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1-beta-1/shuffleboard-2022.1.1-beta-1-win64.jar",
        sha256 = "3271f09fc3f990964a402b47cdc1c08c1219fe01cb59d33fb9742b2e069fbf9c",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1-beta-1/Glass-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "61b5d458f06afb4db00e37182c26899f3cc0d94d7831cb0b6a071dca7bf136c8",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1-beta-1/Glass-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "2f0e3deacc8ee86906a2b40d37d11766397103aa8e211bfbcc8adf5803b848bd",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1-beta-1/Glass-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "798928072fb1210984cc4f891567d4595080a0d009c4704065ccb0b054830773",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1-beta-1/OutlineViewer-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "b9c80208ce59344b2170f49c37bf69e90c29161921a302398643949614a7d7d7",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1-beta-1/OutlineViewer-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "99a7a29752d14caab11a0bd6fdb2e0aecf215ea0b5b52da9fa05336902e38c60",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1-beta-1/OutlineViewer-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "7d32f193cbbcb692ccfbba3edf582261dc40fed9cdfbde042f71933d84193161",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1-beta-1/SysId-2022.1.1-beta-1-windowsx86-64.zip",
        sha256 = "4b417e19c18b38cc2d887db45ccdcc0511a1c9dc7b03146cb3d693e36abde912",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1-beta-1/SysId-2022.1.1-beta-1-linuxx86-64.zip",
        sha256 = "7d2eaebb9d465a58fa1684538508dd693431b7759462a6a445ab44655caadd8b",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1-beta-1/SysId-2022.1.1-beta-1-osxx86-64.zip",
        sha256 = "001ed38d1aa29828a717cfb5a041e3d5ed899cc3bd4ba38bac965f19bc0e221b",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
