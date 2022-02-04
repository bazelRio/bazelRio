load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2022_3_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-linuxathena.zip",
        sha256 = "03b59f53190c01df9069541dab1411301885904d5937dad47464ea23254fcc54",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "29e9c868c92120b811a8815d870f96378102a7d7621daf4551fbe8643e5803ad",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "0831a9a74cc5e55ce1485a3e9d58528a0495d01f72297cfaff7da962cbbe645e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "8a40480db72768416d827c053a7345d3148247b76de73518fd5d419c417b6555",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "ec7d4804ae45676cf4f8aa23c3745b479b15792864dcbfef9c220ae82c92dc00",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "4a252231dd3fa0e8409ba0f2365402f91d2eb64278be56f1fb72e94967ea93f6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "8635df216d0170daff2750052d8959865660e9c147e183d451f9215b14510b71",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "b00fd2a8dc536ea774113c4a2269ecd6c3dcfd04f7f8255d86219a94e5eaa76f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-headers.zip",
        sha256 = "08d44dbb083e1fa78cb368f40008dac1ce0657e085efb6e638cf57bed1cc0ccb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.3.1/wpilibc-cpp-2022.3.1-sources.zip",
        sha256 = "a40ae7128ff5ef97987e9a210818dd777265083f085b05f20fd377dbf157ef1e",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-linuxathena.zip",
        sha256 = "d0cd66dd6d1f15e4ed98dd45cb9d1145f18a627937245bf2a2695ffa5ee21c32",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "3aa91c3fc731ff4cd0b86a615de54bab108b52fd9045c56520ecccca006b8aa2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "2871c88c0d7ebc6d13005d698d641f23653d6de446fb630815470d38adab17b5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "11b477e7e8f398265e9a5cec16f8fdf85dd9ac96aedd4ea43b5088f496061a01",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "085445d4df4b17f2284dfac64ed57e1a2de5be9be4ef517f016a75663de6b2de",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "507f520d94cc655abed8beb30c4a8920917877ae60133a632d40fa5f349842e3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "60d1f330888b0529a3605dd8c50d171a8f91ddfd23f5747f2d818a346c8adf94",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "1a818074ccd054daa258b1f909e84c7078b8bb4a464e0af4ac4fa0d26f8aeff9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-headers.zip",
        sha256 = "30538817968f6f905008fa3e4b9cb034ab7a896307fedd9568b0df5412941c2d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.3.1/hal-cpp-2022.3.1-sources.zip",
        sha256 = "6ef1b513452a7abb1894af3013623e097e17d7adce9197a956206e903adb8ac7",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-linuxathena.zip",
        sha256 = "9cdbe79da2555a6fa6dd0dbc8fd01d534dd51bdce939627bf0e1881566f1aba7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "97ffe2f8836392732f3fe361e72dd19634464f07a3b7e89359e50ce8f2f7498d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "a3c99c0ba61c6f215a3efa37249f21b67c60ee3c051a88796eabf3c91edd6a69",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "56cc57f4e0252c122a77843ff244025bb39ad36229104e6a9c6a47a51d913bc7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "e5481f51dec5fcf2ee912acfd24bcc6705c3e08e4cd38072dda88188329a7b72",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "3085ed9ae8ae5bcc570f23e47c0679a402d06afc826ac9159c4f89c3d1d9add0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "5fbfafc0c6018398f1fb45005d26154595bc4e56287c4c3d2faedd70e4d7f197",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "919399b4f25f419e4f132b5a3206a71854d8097adcfffb9ff904ec7c1569653b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-headers.zip",
        sha256 = "519eaac8a91663b142d811a199fe8abf46a086dbc9f82317887322008473cca1",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.3.1/wpiutil-cpp-2022.3.1-sources.zip",
        sha256 = "2a66e761d025bacdce90337e96a33d11f7a31ded69c4addbfc69e8e1c4b4945a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-linuxathena.zip",
        sha256 = "e2330da4c4a424416fb4f1cfd670ca55aa86e4ea1f397718f0fcaf013230fc4b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "ebaf4a815d5bb1c4c4624ff1f437e9c1649b717096f153e8f2923995b93e71ac",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "60f5aa44a9dbc4465302a3086f4932a48e2e6cf6f06d9e544182395c95982c1b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "af7de76b24702c30504ccd6d92d2265eb5f1402cbf08b418217e8643adca78b5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "2d7eaf19f375c98cc37f5f6efd8ea428fd142f4e422233a22db60f452b15a746",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "c328e2aa1394addac9863159d920daf48f12a353836853c4cd17dcf131e18f25",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "d9c337fde542608aa37c407b16f22d28a54f62b5b4d819417d6aa4e4f422975b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "64bc000d76f5511e74cd48f3fa8eb7859d55b9686e61b2413c04d53bca461f96",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-headers.zip",
        sha256 = "144431c4aeb28d9fd4ddd44614ca7b6f9fc0b87b8488394175b66d76979beb83",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.3.1/ntcore-cpp-2022.3.1-sources.zip",
        sha256 = "16df84376424a7e94b1944bbed31c62f8289548046a077b9c7e62f43d8350142",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-linuxathena.zip",
        sha256 = "316fac1af3cc3932d7364e487f109d31abc37cc2ed950e49d598f044d87d16d0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "e7e32ed9d8fcc3fc069d9a0da68dd3ed9c36b10ef258bc21028cdab89b63edc1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "aa166dabcfdd92e89ffce0aab62b8898d11f8072c456892627a14f18ffed8f73",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "aff716f9a6b5d830fe3c90a1ea0e5e8e4ad86fbfc2f4f8d7f9090e1517685c9c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "2dd218696838eb57999a0ce0d8ae4c6969d37a48bbdc0fa26dc8e60fbee6783b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "ebb21c86c0d9aae86dec1a697705078dbfe7832e329ac828658b4389f85a5717",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "eee5db885c3863f2c1cb49cf4b058c0b2d5e4ee046262d59912143bd8bbfa022",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "b786242ff0364dd0aa881565c42be10e57a1bc0c1346eedbb054e15f9508d575",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-headers.zip",
        sha256 = "1a2165cf8127a2a45cc673517eb0af5e7e92fee377b35e4e83195538a024d65a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.3.1/wpimath-cpp-2022.3.1-sources.zip",
        sha256 = "62f04d5f47f42a507864c6c451b27076384041fbac0bcf4fa57b47baf09d8b37",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-linuxathena.zip",
        sha256 = "a320c34a5269affe3edacbe21233fad4f8f84f2820a2a0fabeed776b3f234bcf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "e312a1705f51e565873d43257779426ea14dfe7a14d49f5c595979ff7d85f603",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "ae15e43bff434134ec9fc91b93099a35bd15589ad33c20edcaacb64d42e4aed1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "baa1b09e3449e44a6d8bb7897ab681d9a4dce0ac02a25bc692bc6ee5bb8f0fbd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "fee7ca8766d0fcbfebf47ca61e846efde5b65ca337135817f3e68a073cdbbea2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "28f0c2cb631a262784a45090b5614d487cc0c97dd4f8ac939d8117c5bf9bab36",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "5958825828e28638b0e134c6b715850474d516d550078e7d6b33027545a1d6cf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "106f411e1ad77f9550d0e283b90295df078546094d2bff68afb2ff9aad85d0b0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-headers.zip",
        sha256 = "cd5b6fe228e47fbfe5a5afefb421b19f9ca43f616340a0a7588bdf366b7bae82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.3.1/cameraserver-cpp-2022.3.1-sources.zip",
        sha256 = "cafc35d1109bc449520d12117f9b9b44e01d2e92eb0bf286f7bdd1649ff6b3ca",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-linuxathena.zip",
        sha256 = "2138ac93b6d201233587e9a1012fbc0cda44a7598525f1ae947362e0012d4a52",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "c98593fd661d93a8d63e4a34e60c3c19688b552b815177c5178a0b2aaf490d7c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "b226bb259ef9bdf8809537da72c5f99e586e8f5b1c841043d52778dba4dbf97c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "26d7e0f89b0a6db8089263906d19b055b27126651513e64a010c4090a52a3e2e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "fd6fc22e5e64a71128269e87e0ed78905dc6dd7adf242a52b0b8d668d045e4e6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "09a998ee72499fa54e75d92ab8e7f71c6fba18f7c7ec97b2c225fa5c441cad5d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "7dcb9949831cdbeff08d2a5fa4978c04cb95684b23dacb2e19bde8c401049279",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "a8ceea0e2afcc07a32ffe5b5311244aa74e94355699f05e597b09bd99670d81f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-headers.zip",
        sha256 = "8dedb7e250ef85dc295af3acfa28dacd50b8e401315f5876efe0bdc7b07e9a6b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.3.1/cscore-cpp-2022.3.1-sources.zip",
        sha256 = "8f66f029af1d0b184cadb7ce1ae0d06d35a570765a65e13a1878d12553e01993",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-linuxathena.zip",
        sha256 = "f9e715c9c66fd6e4e244476cbcfa69c4e7ed99e1b0a9a24ffcc8e66c8a00b4f0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "3dedb00896df19f260c8277bb05456661c3c0dabbd0b0bf9a0b270e6c90615f1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "4cbb4a0de241d67f5797fff3d87748e11c1beb2034b2ec026b677d067c28d74c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "a78d92300ad6e9e188e9a0d8eac7cb27d5dfc3f47351af28dd47b2ea9fa971c2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "4b69de5a167206af3ae668a29cd5a423d46f8c02eed13df7bf9d1e7bafab7f50",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "b8ee5b3afcb60b674fd6215feafd8853e2538536e5a8513ece64f3351a1fd9fe",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "899fab875b68ea42a81676381838d5f8bb4dca9f30f30dec5999621da72ec6bf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "5af4e9bfb789d321f671651ceebc6e0a77fddb162ac8c4f1165247166923b4a3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-headers.zip",
        sha256 = "e58b114544eaf08954f390f94752ab250cc04142f10ea36d160b07e750601571",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.3.1/wpilibOldCommands-cpp-2022.3.1-sources.zip",
        sha256 = "76f6a144ab47ec52b4957c57a0366a91221f0922a5112e1455ecee73eefcb659",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-linuxathena.zip",
        sha256 = "b7897a83641f8e61be5151683293d7682748e17e8eefc149b2e4df1b7537f0d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-linuxathenastatic.zip",
        sha256 = "fd1ef74c0379b0a9d41fa39e480326cfcb63cfe56767eac747f4dd5c8c9deda7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-windowsx86-64.zip",
        sha256 = "a5aac1d6f953f635696073fc6912946f8a13559cfd3873d92fd226a8aace775a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-linuxx86-64.zip",
        sha256 = "775a0f1fa6669f94e0e0eb748dfc4603501209d9237fc175e10f94234c56b276",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-osxx86-64.zip",
        sha256 = "6eeab13703d9470e6c8be8f7e54704f517539a76af51c4be94ab9ceee489dbfa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-windowsx86-64static.zip",
        sha256 = "4e576cb44428412c59971c1e40c8fb258776979784cc2086a29ce34e1521a71c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-linuxx86-64static.zip",
        sha256 = "b44d16cf68ef0a3798b9fc4559335350dcc8a37d8f211c5dc8e951b4da10bbc8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-osxx86-64static.zip",
        sha256 = "2f32558ec744239e7a2a9cda6eba328ff942a833b7fa9884a00fa55b572f3c77",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-headers.zip",
        sha256 = "e09ac861c660167411cf2bf4e15d69ca2ee28743f50a57326a0a107fff6678f5",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.3.1/wpilibNewCommands-cpp-2022.3.1-sources.zip",
        sha256 = "e60691c422da5bbabf46269815ca6507df4d038cc5302e4f75728af49d5ced91",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.3.1/halsim_ds_socket-2022.3.1-windowsx86-64.zip",
        sha256 = "e7ec80af722ab3a8c99d6bf393f95e32dd6e09994d07b52190aad9a4c42440a2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.3.1/halsim_ds_socket-2022.3.1-linuxx86-64.zip",
        sha256 = "6144ae22f597d9ca21ef9309a7c7da3cce95aef629d3a2ac953a20c940939ba1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.3.1/halsim_ds_socket-2022.3.1-osxx86-64.zip",
        sha256 = "19347c9919a4b06e0fbddc8cd66e5501d29a4e29a9f352f39d195be8800ec130",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.3.1/halsim_gui-2022.3.1-windowsx86-64.zip",
        sha256 = "4ff4c97108467f8d08986f6cf64bbd82b4a117e367d04394dcf18286ae95fd80",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.3.1/halsim_gui-2022.3.1-linuxx86-64.zip",
        sha256 = "182d81197bde187737131802e9df0e4aa32eac6a925e8d9fbddbc29fe107fc3e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.3.1/halsim_gui-2022.3.1-osxx86-64.zip",
        sha256 = "3dc1ea448b05985882f4bf356d8ba8f34abded52303c62312ee39235e1c9fd5d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.3.1/halsim_ws_client-2022.3.1-windowsx86-64.zip",
        sha256 = "9770c4de069a23c96fec1dbc08cf5fe4af8d71c43be919e57248a2d3aded29e1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.3.1/halsim_ws_client-2022.3.1-linuxx86-64.zip",
        sha256 = "5d868a19aa9141da24b5e7851e537de18012f0cd530d7e3488b062877d64fcae",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.3.1/halsim_ws_client-2022.3.1-osxx86-64.zip",
        sha256 = "7de5347216d218bb5ca229a0a974592586f342543911138f0165cfe07bb54200",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.3.1/halsim_ws_server-2022.3.1-windowsx86-64.zip",
        sha256 = "2d02091165ef1215861acf028e231eb0d58e7dc322878d3e5d6d10f2bfd6b2ee",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.3.1/halsim_ws_server-2022.3.1-linuxx86-64.zip",
        sha256 = "7b53fae1648fe6ef693db94c57999dda6b4c8eef8e0969fdc1715a42ef90105d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.3.1/halsim_ws_server-2022.3.1-osxx86-64.zip",
        sha256 = "638680ce16a2e401cba08afe58218de85aaa5681d70a8a88276e4d9f86409837",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2022.3.1",
        artifact_sha256 = "94d313fb326029cf31ca9a04df8d02371e43156af9dda918c2f7660efd75ae5e",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2022.3.1",
        artifact_sha256 = "4f98ee6970c2ec95b262b8908ed7cd7e7706de5376d3e9ff90ccb9c5ed2f46ac",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2022.3.1",
        artifact_sha256 = "e571485032dfd89a7e8bd36b93176e327a1ed2579356f3b70594a95a83c118e9",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2022.3.1",
        artifact_sha256 = "9ebea418d5b0518015f6c27ccc7fbb07eb948876538c78c2c34c63cae01b4614",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2022.3.1",
        artifact_sha256 = "de93f971efce1a4d9bd37bbe313e5315eb88726866db16759b39f02b14f6b144",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2022.3.1",
        artifact_sha256 = "d6ffdcc0bc7b1a08df1748819330887e68c2a54e707c8bb90a864b2da30ed978",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2022.3.1",
        artifact_sha256 = "fcef0d9be9915292fa5d6666560922cd091b2a337b96c6b56faf0602ad99a1e8",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2022.3.1",
        artifact_sha256 = "2b4e468a4ce9e5732c1d86daa0b8d7c0a0fb300a1e6f7db4efc9bb387ec53440",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-java",
        artifact = "edu.wpi.first.wpilibOldCommands:wpilibOldCommands-java:2022.3.1",
        artifact_sha256 = "0d827fd744ea6885ce6c80e7f717b7bc5276152c4c073019b2194208d3bdbdd8",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2022.3.1",
        artifact_sha256 = "78ece93a3254ddff41d664d0a3757c7887455c0fe9a609b7c8289518ddcce9d7",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.3.1/SmartDashboard-2022.3.1-linux64.jar",
        sha256 = "3b465c5ab6c7e818a34a7b7290ae47ccf8371ccbc22bc8564c9e548eafed9bea",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.3.1/SmartDashboard-2022.3.1-mac64.jar",
        sha256 = "18d62bcb38dc3a19a3e442469868a61fddd237d98eb677cf601bc789d8f99a72",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.3.1/SmartDashboard-2022.3.1-win64.jar",
        sha256 = "6ff95ee11d0200a2afccf0eaf6baae97d7d9c10daeb5abb4a44b0543ddb427b6",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.3.1/PathWeaver-2022.3.1-linux64.jar",
        sha256 = "721872bc9b8632b3ac81f142130b0bbc0dae92d6412c92bfc0fbca9831820d0c",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.3.1/PathWeaver-2022.3.1-mac64.jar",
        sha256 = "8e50b96a70589016bb06959ffbe93ca8730c7fc15ad85a17a7e0f3698527c286",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.3.1/PathWeaver-2022.3.1-win64.jar",
        sha256 = "c91eff2453da0aa43c87d65ef11867b59cf0569c0574a1be6c8816be84585687",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2022.3.1/RobotBuilder-2022.3.1.jar",
        sha256 = "90798f631e72021cb923fc48e33a5034c979486ada2dcc3e46f584def30a8982",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.3.1/shuffleboard-2022.3.1-linux64.jar",
        sha256 = "bbacdf55546afe376e5502dd42e55f8f3f4261ca198b1d36e28ec40eba7b40a4",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.3.1/shuffleboard-2022.3.1-mac64.jar",
        sha256 = "1e55b4687f4d2a658ec9e16b8525a6ac10a7f2d61dc41b9875f93ae5bd2c1246",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.3.1/shuffleboard-2022.3.1-win64.jar",
        sha256 = "15764849f38f86dac4e5627d463c5e864a366f117cf24fcccd5953fdc45353d4",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.3.1/Glass-2022.3.1-windowsx86-64.zip",
        sha256 = "a96ed69635ded9db44e38b2548bcae22bd2740a127ac423dc6e183802fa28d1d",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.3.1/Glass-2022.3.1-linuxx86-64.zip",
        sha256 = "9117a6652981e2081ff4b8c9c92a04c8d627a06138e5c423abe4baf14f95c4ef",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.3.1/Glass-2022.3.1-osxx86-64.zip",
        sha256 = "d5d6ea6137865e6ce5237c3cae05a21b48e300528c8a6fc29e81856f5d45e045",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.3.1/OutlineViewer-2022.3.1-windowsx86-64.zip",
        sha256 = "12c6f2e09ee6df47c03f7810a0100626636634ad47043acb4cda8c5dca649843",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.3.1/OutlineViewer-2022.3.1-linuxx86-64.zip",
        sha256 = "8d45cfa3165cab3fef4230cf6a4838d2ed88e155995e6194f326ae44da776d3a",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.3.1/OutlineViewer-2022.3.1-osxx86-64.zip",
        sha256 = "e9ed22b76a3968a7d5a03dfbf0548a31e4f13bab55e3ffdb3cab0aa7ab04c7b2",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.3.1/SysId-2022.3.1-windowsx86-64.zip",
        sha256 = "65c023a592b4175f62b29c815bd71413ca402e4b0200493f597256d2a1b14324",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.3.1/SysId-2022.3.1-linuxx86-64.zip",
        sha256 = "cd8fec2af0c641434557c4d962f27c2f3a85984750dddd36015a79e0f302474b",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.3.1/SysId-2022.3.1-osxx86-64.zip",
        sha256 = "8ded568e703e3450bc84e7dc95002a7fdf4897b8d02546a8c2a4aadc0be22e19",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
