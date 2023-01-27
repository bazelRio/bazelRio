load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2023_2_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxathena.zip",
        sha256 = "5b446eea2652538c6e4c7c2080ba74a201436774929c1a817f3ce959c3c9c4c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "9cb06f18cceb178259a7e29657bcee9bb938d70ada503093d8dad136d2335bfd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "b66e97179dec8fa4308c1ff352464e3a4fedca32ad7ba6d870665c7e185fc76e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "39332700d4c6f2bb0861b475d93e72e5648fcd25f87e96457ebc81d66d0930c7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "432e69e486ffc4fd8eca24b262f252ea1f87fb356cf0876ad35cdebdc52c780f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "9f5bae02d778482a2c62e0cd8afd1aece7da84cc119cf30a515c09fcd84c8734",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "1e401441e59729277ffb61b829278e9247b1907fa871a25482048b300e38913e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "e9ee1c0b11137bb374dc3d200d22467ef7fde2c65b8179f0a3bf10b33fbcae2d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "f764a337d9bdfd22beb198bd6dd31ac0c970ae7f9f54a0ca0cfcf1b06b6c2fc7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "8432a9df9f411ce292b6100bd73003eb0432550afb425ae99c694b9030793bfb",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "be271eb185ef6b735b22ee8f019e9ebe8f64498219e5d75cb0f7dfccfb76178d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "ae5da309aa654244b75621dfeede7c60f92e2d295abd76899be763afc1e0f6bf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-headers.zip",
        sha256 = "6e8a13ec031b66201432cb3d7dac8c90841acc3b3ff329b14cf08038c5f7d4f3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.2.1/wpilibc-cpp-2023.2.1-sources.zip",
        sha256 = "ccfe78f62ff4d775ae1fca1315483e44a2ff650fd58ca6ab5a5039017fc4514b",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxathena.zip",
        sha256 = "d595685215548e409a6624a3a74f7c83cb37a777e1c17fc3efa1a1ce7920beb7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "f76935861c4de14dbe97986be70bedcdd17e2a48f63c32300b050ac8c2c93257",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "20612b3538ee10c744fe6fa17747b89489965696dc86bd85683cdaea2a4c2bc3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "1d2789fc05a62445d7032f8996b4fdda00fa1230dac7257190b6d525eb5fb383",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "87ca1d0be49cea39d3ef1cc3ba621418312b1ec9dd056c11d077b993466449d1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "e05457001475cf36af537391d51c4fc3fdd6fa9db49e5c75df455b1a31cab894",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "cd37843d27a105de752446db88981c764c0bf10d41c26458f061f54dda12dcf8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "f526328c564945f6ea4971c7751246c7dc9634e4d2bb61f8028d2d2743477d3d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "a045dd37345884e33803289802ec3db4e9c8b53ee8131c028352e794f80dec27",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "8e389d7e6e58f9cd219042e65c4477722a17d1ec4b2d065d4c7f61f45a2ea116",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "282d1a0e8c17b7a6bcbddf477dc6917615221b90607b2cce7a6db3f6f51b211f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "39ba49fbdbc7303506e26cf1aaa5e23976e6a37bdad1b4971e206b68e7e96f62",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-headers.zip",
        sha256 = "82ed32e473e6d5dff927634aea2a7ecd6d54617d746d6343b9cb203d049995cb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.2.1/hal-cpp-2023.2.1-sources.zip",
        sha256 = "d5f902dba39fbee3bcc98a3d164c26957ef7127339f185dd85db582206bb4b0f",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxathena.zip",
        sha256 = "c29aaf6d07ac8bcf8a468846d94ba50a1f858546af741eb78c381e1b1e9fa4ce",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "98cfb2ea5473578ef9f85e1ca671dfda4c941aae72ed665f9719191f158f29d9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "63d9f9cd6f2a672012ce7247545c676985366fd71432a27570f93bbf9b39f8ac",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "6b0ee78eca94beddb25a19dea81f69d43c4d533464db86fed0d04dc9f85c3aaa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "1332d47fb90cd579da07831b9bbbdf1a02989019f551b5e15aa6e00a95867c64",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "7e4212b77f0b8d5438ee31f1f58fee0570833268b2b0d5871f594087be0b68d7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "cb47c1f91958b5be32c68e75728e981e3fb5fc083cf6e729df4bb7cb1653f82f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "0d4e4da8066e2c677d30cd33344379ed31ebc9d081ae15ef149896684be70d6b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "10f5c3b9cbbe425b1ebab5a63e7003133793b56c95680aef4134129faca9b853",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "34d7322062e99e06d83cc3844eae2458cd0bcab397fcf905a526b90ccc5583d4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "e05baf3dfe4d4dc3503f440b6db1dbc66d7632c118e7454ed802c20096001982",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "58c81522365b72f1d743c001276482cd39985d02f0066df1e4500226a07458a2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-headers.zip",
        sha256 = "03e638547ee692b5cc36581ebbdac3d204f6933fb64ca6aca32d2eba66da34cc",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.2.1/wpiutil-cpp-2023.2.1-sources.zip",
        sha256 = "25fac83d113073df234ac22575f22107de7757abc231ffffa4dce16f80454aa6",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxathena.zip",
        sha256 = "399ccf2f337c07dcd45d249532aa9327084ff45a38b448aae6dcc9020ac8835b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "5eff9c138ab0e4b9c2ccae5f65d91b2496ddbe9b48e9e9cffc662479ac046b27",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "4d11cff61c0bf7cccf9f1600f6afa38b68fae96326c52cd8fee27b464cbd285c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "e23638c709d0a4cc7ff86bdcf3a28b7a27070af04a81e20b97197bee52dcd2f7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "b7cade9bc6d917554d2e59f7a8250c6b4ac8f86e9b8fa63996c7f3038c4148ab",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "d3bf05cb4db9b3823a9ce0781717a3289b0bae525b2e2f48850416fda1ec1f32",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "8dff23b12e1886a6c73f9eebabc67b0f494de61a5148ed33c39dfa5fbbbcc013",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "8f0a341253a47ed24576917a72ba115680d5450b1220589144d6c27da4d86a90",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "5619a31e7bde7488a55525fd5e0b74a242ccea8d249f7e7eabfd22628e2dc44c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "af3a3ab81d83b8348d9c41705c7be75949be67464d724b79cda4a17f764c8ce2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "d7ecc29dcd924a866b84d9da2dddf4c1c2eba8027b378c63664a6b21c036def7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "f6fac21d9aaa13414c6728939032ad62704ac4e47a6bcf490116bdf6907f67bc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-headers.zip",
        sha256 = "29abca6f47ec3344c69bdcebd9b46694b251091228e13d86a38f8e41881f34af",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.2.1/wpinet-cpp-2023.2.1-sources.zip",
        sha256 = "f4a46ac4235a3927adba44eab9e71c9533b5a0e88c675d29bd843826063c67a8",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxathena.zip",
        sha256 = "1a78954cc4de31322fa38b5b9a53252aa375f0825b5fb2829419546d276a2b89",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "1d5612dd30a6075f3c901d9513191506e7657170efa437bb3fd427b9c9d1cf85",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "865e599ded10cb309377e93f3c6f80d43b9cff17812f754068664837f04c7d49",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "3658e1b27fdf8e4a35fe4370eeaf7980e262d27039199d63a321590e0df4bab8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "3187c5e6dffb22690bd58904e83a82db51715b09ee8132cbc9b4b9627431e2ff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "e6975257d7002a5a1962b6bcfb41d576de5d1abc447a8ed481ad5b3979c34517",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "6660760e6a59b5fe81770529515bd15867c9b92cda21f040e4b303d33f286cc2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "16cdc0005c9460a0eb66f2076aeedad0697516c43856d5d5e2c566c319ded471",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "b7aabdcaa3c7971c1ba716fa06f8c04e3489e36d6af00403a0de4adc555c6109",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "3b777c0c24f5defdc7440361a086fec28dac2aa459aa88089908a422a85c7434",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "0b10e032af48305cc079c6bf9e018d9f2102bc565d38429c1271e7f0288cdaf6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "9e076c27d9ad27db2ce10e876a93d65b7c4e838f095159d19da544e5d5ae4b10",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-headers.zip",
        sha256 = "c88c136575bca8a6820f44f1875210a9a145c953861a52a94d3f8d10f1b2e432",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.2.1/ntcore-cpp-2023.2.1-sources.zip",
        sha256 = "0e51cd466bfa446b198cb16491ceee932944bd83797643cd2a7fcac522d1fdfc",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxathena.zip",
        sha256 = "4d2b0a7048e70f9625454ddb600446de97e33da577258c1e7b67abaa911393f3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "031ec3a76d328406f1a762141a2d2fdb16fc0c2c34b8b02224cb27b3ebfc7832",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "bb29dc0418002e17134ed80dda19990747b827cfd874abb4e0ec93e5e93e6920",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "42c94e21309dea3903e22198a1e02d77689282b477729d21053d59b64ee259e6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "42bb20147dc6b6fc7c670eb075d827452a654f49722220ac6b703ff74e18595b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "9b219388717a04a74e5476ed5d19b5551c059b67d02feff058882949e0fb3949",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "37b8173a1e10121a729787679ea9a2331299bdf80c92928e60b4653c824c9607",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "5308c38a8e1cf83f0c8b98d17f5c0bdd58c4289482761bd5a4dd30b81dac051d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "9c53d726cea91c8e6b0a00a992f997d6effe20076e78b9c9d8d99b9a5c4d4175",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "ab1b82757a053e335d7e2e55304d19435646683bf84447c426436861746944cc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "632b684a0bf124fa26e347a6d007df7ce2a63609a57f467d1707e69f64ce6062",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "f4746983c27fb911bdaaeb5d31883bf54994f4964fb25483bb9bdee8dc2b410e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-headers.zip",
        sha256 = "707192001c0684479e10d741e9678ca47019e70e12d5c3c1ad478e34df71f9de",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.2.1/wpimath-cpp-2023.2.1-sources.zip",
        sha256 = "ddac37d1c5bc89aee76745e2ed386d927683f98e29aa81d6fdecc6d28f14b5d0",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxathena.zip",
        sha256 = "c98b34f8e05142d3eeb18af64e35a8fa26f15d98fb2f5b620c269fbaa354d8c4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "275e0545ad1a68f53c68299f1df086b95b8bb21990a9c988c0d1e6606568d3b0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "b1be967f13501f97ded35618df213ea58aee5e060bb01caf450c64897f9eae7a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "60e0db43b3db2066980e4dec589aad0a4219a19dd67c69fc2672f159530151ec",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "3fa82824adc35714284728ccda8c176769a5be7cdb0c55a8184a60a15b962a92",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "77b784eef30324176d2f087d026371f59b985637ec551960b0e8649beef2deac",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "5424b94e40e578c322860e3e20c0d768c45d8e94de8ce2bd364478a9a81e8cd5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "c6d6ede11ad88a7007a1fda9e017f2b97fe7c3e706952b578d00678114c87bd6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "4dce8ad24bc766bef5a60fe72aa0f4f0fc920ebda36cb9390da4c2993dd79b27",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "e8b9f4070040361b05a682ef7e48914024db82eb21c14bdba72408283dc445f0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "b4f329acc1841235776056f3e2d49f6dd1d2d1903cd37adfc37b741e44f56a5e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "d192a0a844a8f691f6a7888c0ae87e7026fbfcc4be43e3d2b0350aa71abe570b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-headers.zip",
        sha256 = "e7f11d5ba3860e0168e554c27778285eb0a375dc17d12925d7070325facafb16",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.2.1/cameraserver-cpp-2023.2.1-sources.zip",
        sha256 = "95f9fa81e3101c401e8ff55b49260edaa232738f848f4a0c1f966c352450bdd0",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxathena.zip",
        sha256 = "3fc05c54919959efcbef822a0591aef25250b5397341e4d0015deb4693737ee4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "b0ccee2c511b716300d74ec3823e0a1c49ca9ae5e590bb7678bf9a08e549f6bf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "3da50c7b432c2e2d1de0801afac08e2bfc75035a452f0bbd71b0f88ab45a8b4e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "1f67efedba3a634653790ee67c9c866b44bbb98f52aaabf7c96c885c303654ab",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "79b981d9042427da4393f9d084dcdb5c2282a9b4ac588c5d6af584730af63f8e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "d84df28ac1be53b61db93e0a2dfc95f18a7052c94b0b257deb00141c79c6ad3a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "601ba82f8044cefbb62a57e39318104b8d0d68d09f045c14e885cf46ca3175c2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "0bb9d272f075f0fa98e61b04407cc8fb62753a1c43f0f76c74cf096748c6d807",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "34ab780b0a1e734df87500af112520873ce9886bd657988f371539bfdc7dd7a5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "da8b00ce01d017216c259c2c1c5ca29b065989ae02ff8d67dd44c4ade02c2bac",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "08970cc9173b56642d661a90b3fa7446bad2f503c60bc98c67b23d91da9d90fd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "0b458e2d564162698e75621fa8921c9518e0fa0897ad59d4a5925f4a0d888e02",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-headers.zip",
        sha256 = "4a470f9235a0b3b75fde844ea637ff876b319f073be1008890335fa5995d7424",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.2.1/cscore-cpp-2023.2.1-sources.zip",
        sha256 = "b40154b2c4f9689f976c10c8bf32a963fee784a6670e31b24be0ee84020d8510",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxathena.zip",
        sha256 = "bbe3c9c00dfbf7eaef3d613ff2320b300e3440d8aab935f2f41934c88f36a3b0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxathenastatic.zip",
        sha256 = "86292d944cf78875af10f092d897802236259b5d840887c3c1daa0de18bd479c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxarm32.zip",
        sha256 = "5f43953d2b75b83db58cef43aec834707278504597f7577f2eac83f01420a084",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxarm64.zip",
        sha256 = "8cea2263ac2f9ac1a268abb630e8dcf3b5b0b44808135e3c8bdc63d09de8dbfb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxx86-64.zip",
        sha256 = "8d432c59959883ee4e7e2811ba2d3702b35966cf8899004bf73f4436531e8978",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-osxuniversal.zip",
        sha256 = "d767e9e669639396ef5f37e318c3996144a61c578702e889d82df6629b1469c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-windowsx86-64.zip",
        sha256 = "282790119b58012eedcca61ce42c5ec8c3809cd156baeb5e9bf3b87fc834da9e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxarm32static.zip",
        sha256 = "c0d84bbbae369d9e88e5edbefc5e986d6b5da7dba3e929c4b973615c1b3b52f9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxarm64static.zip",
        sha256 = "63af00c7705f37dc83be416b50ea31612e1a34840eee058356500f803b52ef39",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-linuxx86-64static.zip",
        sha256 = "3e46a5d7e19c5b916f5be58a2a845459150230dc7faccda9f51f3f901440505b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-osxuniversalstatic.zip",
        sha256 = "1e07b702263c9ac228e55fe096c6bdb6fa7954f3453186733a6a7e545dba36b2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-windowsx86-64static.zip",
        sha256 = "43e3f1fa7d6b2f3fd5c74e7923814959bcf76af720e6fcd310f649455bfedf68",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-headers.zip",
        sha256 = "da51f1e32b708f305131c57eb5aac3aa0ba746e141206b19ec8a28ce1afbfaec",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.2.1/wpilibNewCommands-cpp-2023.2.1-sources.zip",
        sha256 = "f8777a80e67126fa41c7492b88027640c4fc2d5409c04a5213b42e099285a87a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.2.1/halsim_ds_socket-2023.2.1-linuxarm32.zip",
        sha256 = "848fde487e1d65894f6ae8c8dad74bda94a266ce0ac5f4c6563bbd3dc1399785",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.2.1/halsim_ds_socket-2023.2.1-linuxarm64.zip",
        sha256 = "da5f3a160ea4600c69ff3d4bc803dde118ebfa8a9037274ad6d770e812e95300",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.2.1/halsim_ds_socket-2023.2.1-linuxx86-64.zip",
        sha256 = "ddf639835d5b857039417927f0d88638affaa6d62046c2cb13f4372e223dcaaa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.2.1/halsim_ds_socket-2023.2.1-osxuniversal.zip",
        sha256 = "20c16dd77ead1ced0dc1786d10e6dc8c745210be7a7b8b521079014e38e01a35",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.2.1/halsim_ds_socket-2023.2.1-windowsx86-64.zip",
        sha256 = "2ec9b0323dec4338faef90732d64fb04ed9ac0cc98881cdf8405a63fc1e2df31",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.2.1/halsim_gui-2023.2.1-linuxarm32.zip",
        sha256 = "73b7713ce1eeb85845b4421743c338bf93edc4d932743ae0f6d4bd9199a47a5c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.2.1/halsim_gui-2023.2.1-linuxarm64.zip",
        sha256 = "fa72bc5d975b15772f1ff5b587f02a91d836e72a7a1de65d7288b2e4beee530f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.2.1/halsim_gui-2023.2.1-linuxx86-64.zip",
        sha256 = "1d08ac0fda3c0bddbbc8a202f90273809e7c2899109a71d835f13491d179e51a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.2.1/halsim_gui-2023.2.1-osxuniversal.zip",
        sha256 = "30cad1cccc61ce4eccc8230d66be6daf2af623a7bb60db11851171c1d2f38c4f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.2.1/halsim_gui-2023.2.1-windowsx86-64.zip",
        sha256 = "150b8d13458e771d6ac559a610052f0ce733b7c578eee331af23fac5fff03be8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.2.1/halsim_ws_client-2023.2.1-linuxarm32.zip",
        sha256 = "077b74ec6bfc099ed5b6bae2bb9b09122e742980bd721c0f7db90a95512d68de",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.2.1/halsim_ws_client-2023.2.1-linuxarm64.zip",
        sha256 = "4328aa322682e1b9183839060864bb6157388698066902ed831a693e1b3a81bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.2.1/halsim_ws_client-2023.2.1-linuxx86-64.zip",
        sha256 = "d98291804dd713b38866f3fe904bd64c0d2ca69bb60a86522b9feccfb57092b8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.2.1/halsim_ws_client-2023.2.1-osxuniversal.zip",
        sha256 = "ee87dbb062b65c40042b505227c21fe1b902bfef249d79b214ac57c38a2bd7e0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.2.1/halsim_ws_client-2023.2.1-windowsx86-64.zip",
        sha256 = "17048cee8f4f4bc982aad009c6a05f4e91ae9ef986801031fbd0663ec6d47aa8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.2.1/halsim_ws_server-2023.2.1-linuxarm32.zip",
        sha256 = "47879813967ce06801a4607bd34226c6691ec40ae4d2623d12cb3b7d8c6e2f78",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.2.1/halsim_ws_server-2023.2.1-linuxarm64.zip",
        sha256 = "6c83110e8649c8233ba7db3672e1b57846981dae9bcf3a13cd70858563f22b17",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.2.1/halsim_ws_server-2023.2.1-linuxx86-64.zip",
        sha256 = "68b2eb63a65281892fd2a24d814409e718f5336d3385a52f7311f79fb160be37",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.2.1/halsim_ws_server-2023.2.1-osxuniversal.zip",
        sha256 = "dd3d699f6d6a2a759eda895f8ef1601fe51ae24b7a8975369cf72dbc66d98ea2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.2.1/halsim_ws_server-2023.2.1-windowsx86-64.zip",
        sha256 = "97aca5b6d3ddae0ca83fed4e7e35eb4b7ed4368906f6e8703d2ced04296d3fd1",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2023.2.1",
        artifact_sha256 = "cbe973f2eef7bbc3e42d45de743c666d71a897a8ff01995ec5faf1396d4c1830",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2023.2.1",
        artifact_sha256 = "3a04c7280868eea1f4bac77a9430cfd9b179e6e50eeeb753cd7f036f8f962341",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2023.2.1",
        artifact_sha256 = "944cdd94a460775fe0351dd4a1bdf989252cdc143f37035261e1ebb2d9d457f3",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2023.2.1",
        artifact_sha256 = "9825d5270a3f9bdda765777c9484eb8204ee405fc134e1b0be6c802663b42248",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpinet_wpinet-java",
        artifact = "edu.wpi.first.wpinet:wpinet-java:2023.2.1",
        artifact_sha256 = "6d601f6cbe61b88de8662bf04aa7cde1c9478377dd947473b82c630ddc6473a8",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2023.2.1",
        artifact_sha256 = "5269208600e97fab2ad14a1af26d11b3e3d05d73a969e5506ce0969acd9d0753",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2023.2.1",
        artifact_sha256 = "503aca22b2c85dafdbdc9803027b854e8a08a3b92f4fa5d0339a6e0c76a987b2",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2023.2.1",
        artifact_sha256 = "00cbc42b12e72b311ca7e06f8f0fc750b4b3aead06d46149d7b50ddf72e83ed0",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2023.2.1",
        artifact_sha256 = "d8682214b613312d7a6e6a5f28c85628f9a901fa487db7724d589637d5baf5bc",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2023.2.1",
        artifact_sha256 = "52f665e9d3eff661373ed658b28005c2caed8adc778e580fcdeb2a655da04f63",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.2.1/SmartDashboard-2023.2.1-linuxx64.jar",
        sha256 = "bb3486a506117538194ea0575bc7dc7f97bbb588800ebc9e7ff76617c2714678",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.2.1/SmartDashboard-2023.2.1-macx64.jar",
        sha256 = "1394c44503a65ecaf9be19884e12c2031b4535c6def2a6b25d1c6af8290af7fa",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.2.1/SmartDashboard-2023.2.1-winx64.jar",
        sha256 = "89357181d04199f453fa4d2d89579aa18c5cc70b69f8aab734e21ea88cbeb166",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.2.1/PathWeaver-2023.2.1-linuxx64.jar",
        sha256 = "e26946dbfe860b4cea1c1ca2c6a14c29d603dc968689853fb85e4e7403232515",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.2.1/PathWeaver-2023.2.1-macx64.jar",
        sha256 = "0b5ce764ceac315e2e6ee571ec49c468dcd4a876dcec8677b870f4a35c88c51d",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.2.1/PathWeaver-2023.2.1-winx64.jar",
        sha256 = "c6d7e7cddb6bfb6634fa6764708a86108d2f374ca554aeb28ff47782875a962c",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2023.2.1/RobotBuilder-2023.2.1.jar",
        sha256 = "be8c26da1683a3a3b7dee1b010f537753d9e369ccd6fdf8295aab8a89d37aa06",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.2.1/Shuffleboard-2023.2.1-linuxx64.jar",
        sha256 = "a0397452d8e7aa46857ba2511ff0cac12b837707fb0c4c846496a02fb7e3a6dc",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.2.1/Shuffleboard-2023.2.1-macx64.jar",
        sha256 = "8f788f36a55754cbb95a94c8142dec83ad1559958aaf4840fa38dc51db8c9704",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.2.1/Shuffleboard-2023.2.1-winx64.jar",
        sha256 = "01fd4d994f25544e545e8e530d88ac8f148ea8fd0e0510ada89285ebdcfd4f2a",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.2.1/Glass-2023.2.1-linuxarm32.zip",
        sha256 = "79c5fed8cbb04750408625102cba4ca5ca42f9ee8bb2ec6ead9452653eb865f1",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.2.1/Glass-2023.2.1-linuxarm64.zip",
        sha256 = "8db8e9d9c0eb7e5933a931a8451abf4809181c785bcf23d36c4a11137b46f3e7",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.2.1/Glass-2023.2.1-linuxx86-64.zip",
        sha256 = "0ed31595e11a04d05b850073a46fa0c531db5ac9b7645b133e6b8107503e7106",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.2.1/Glass-2023.2.1-osxuniversal.zip",
        sha256 = "c7207971e99ce12065a19bdf429d1b39fdcae33bd36b1b314abc3fc04b51f001",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.2.1/Glass-2023.2.1-windowsx86-64.zip",
        sha256 = "3f375a2abd94279fd1363770a8b4ee6a1851a5d92fe7663d9f06deee271e85bd",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.2.1/OutlineViewer-2023.2.1-linuxarm32.zip",
        sha256 = "4dd153414e23428757bf2d69ca6c88e18ee9581a8a8090ba4bdedc4b91b82848",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.2.1/OutlineViewer-2023.2.1-linuxarm64.zip",
        sha256 = "332120fb1cbff60402b805c63e5f756908830c348e9be4695ef486662b8d5745",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.2.1/OutlineViewer-2023.2.1-linuxx86-64.zip",
        sha256 = "fcd98ead7e47909f3e9165b278fafc704c77d5f594fbf6c7d30f29081d5334ff",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.2.1/OutlineViewer-2023.2.1-osxuniversal.zip",
        sha256 = "e26035b67f51e6a1ac50ef68a61585e8a64b7150eab2a0c077c4cfa60f0cc98f",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.2.1/OutlineViewer-2023.2.1-windowsx86-64.zip",
        sha256 = "3319b8f9a71725cd0a056023414a6b8da56be36fd06f24edc2c990a3b9021d56",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.2.1/SysId-2023.2.1-linuxx86-64.zip",
        sha256 = "7cdfc0d1b0e9cac08a0c89391330fd149ecafe4a36974a791865b1d22be097be",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.2.1/SysId-2023.2.1-osxuniversal.zip",
        sha256 = "1a7e610d95c5ff14b3b4b575c02dceb92255568fb961012026a4ec3df238e48e",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.2.1/SysId-2023.2.1-windowsx86-64.zip",
        sha256 = "8361147364bef1df5606ab3dd7267b4e4cc116776bc6db73864409e5e46939ec",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
