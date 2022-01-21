load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2021_3_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxathena.zip",
        sha256 = "637dc07b7a3e99b4a9ffbb73ff763e61baa379ac6dce56c8bd5ffbc8d91d722d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "33f2b6db048f638eff7c85102576381caf7321f2ec0f3eee64997d2b1a5f6a7e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "b3f3e6d4958a8f4b72e49df6658f5f3fcdc5114537b49f26263b04cc2c94edf4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "8f4cc72163713512fcaddfc9f3f1790376659f6aaa2ed55c47155ca0b52a7169",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "9a0a8ac63c4d645d938e37ca4da0a040fc48a38e6d5f8689aa9c8eddec024600",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "f56f2caa09e05c273c85e069df14e21c655a00d3c34bcc58da562eccf26c92b8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "4eb3a4b10770bb91df88c493419014f15c0348aeeb7f6c69da85ff8e68e1052e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "2b0722282bf8b9b8e8f1ca0da55ca68e8113fa0c86dc48088393a910a0106702",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-headers.zip",
        sha256 = "c1bb5ba16138be092c52664147d26b45347d68fdb086c483c7ca8f6383bcab87",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-sources.zip",
        sha256 = "30a6d05425c25244c2a318d4ed5f5a007498970abd1d53778b42d1827112d24a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxathena.zip",
        sha256 = "e9de32abe3739697a3a92963c9eca4bf8755edfb0f11ac95e22d0190a3185f56",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "94184af131851f1de3102990de57c4f8666a6f32540e14226636dd24561c68fc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "18d860d1be5dfcf104f9609f9bb2af666fda13e8d3608ef9b9e890b5c4c56785",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "48ca6f22deb800170c801944531557c8d109be4501418c719349519405ae6cc2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "46f76a6ba82f395e19ba48c12c56b1d864b03f46498a0f42b6a15fe12d3aaa6a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "c3ac2c8dfb7710e40625ce019e75ff94cc7d201230870d76c2e2cda7fd720a25",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "cf20205588817d220fac26abb1838c0c8bcb5113ad5f46d5f96d2e6bec48dac9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "3f58fa96f8a5140bb03215e46a8026a366cd900de63d90fe9051a548408546d1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-headers.zip",
        sha256 = "81b4d98d7ae4f92b2887180aea29ef1e780c5570e3fdbe08e02183e54952bd62",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-sources.zip",
        sha256 = "d9e14d607060a39207996c75a07ef7db16308fdda1e9b2cb3a6982cefb2c075a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxathena.zip",
        sha256 = "ad48bae20f42850938a1758c9f82e54c5cb5e286ad0b09adb701d700bd7f8ec8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "f3fd5d9a5087dddf3819013b5117f7ce28fb1ce833e2c7195bdcb068303f3065",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "5e85e0a32ed520c1ea075087b3701769f2007fe8a9385831b1d947f70179cf8f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "4a20ec638981025c0e41678ac7cea691d5a40121987b1309e6907255636d02cf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "09c7914e5fcf4b26967e0bddb501c79d054de276a5724a9089b0e04d9e13e640",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "49f334bd6363ffd35299eda59d463fed4d32821bb14ecc298874325c4009d1c4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "b006f55caebb8c5da5e22b6995fb135355b2416119bbf42b5c7f2004ddd14164",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "0dc9d96f7ee275a19feba48cc18565637ed4e844a738ce3d1ceb6afddd3a5e56",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-headers.zip",
        sha256 = "b2a96f7ce07198b139face9dc341c6550d5044fa32f48435b50d986ea5c8ee55",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-sources.zip",
        sha256 = "9fe30f412d89a902bdaffcfd51ab32e302ce99a86007e26597cd5cd2951340f4",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxathena.zip",
        sha256 = "dabb3d971cf0aee46d4b104d38abd47cc36219b025b299bfb9fea82e53deacc7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "da1847f0404eded488479bd73bcfdee5d29d41f90300cb2204d00c1cd81527eb",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "cd69aba9cc0b16fda738dcde53b1c8c138c616fd4af2e2de1877f66973fcc6d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "d6aedae1639db0fd538f7c519b97cf45441a6ec7c8220c3f564d7c3a7de71294",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "8daf5d2b4cf3e16db6b3ad3a309aade6315b9458abeb40b94d59cbb21ddac087",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "8202203236f2cdae53199114c0b2133bf48a00fc0e46fb089a5baf529006d96c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "f9c3686e2d5a91c1e0b354453e82eb262d5544b66bb314f8d534e277d5f15767",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "8515a6c1ed8d3cff61bcb6596e8da616deae003f5fe049b9ad65b9f3a0e86391",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-headers.zip",
        sha256 = "2451d44dc2a3d16ee315738336b792642a7b8dd8c4aef0f6b7b0fb80c0a527d2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-sources.zip",
        sha256 = "0afa1229a3732fe08dcec145435c94eb2d2c5740d7008587cea8997837270098",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxathena.zip",
        sha256 = "172d57588b8b7c26829fdc5a1ffaa938f65552a5e2f7cc28a510705f881de459",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "82b5b76bc2e84e8b7900b407f7393dcc61df406735638621878641da11c373ac",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "2ec3dcf69a2b0500aea1d5037aa79912a252c5c7f8aefd113c974e1559d88cf9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "d5edb77e3ed15df710c7895636190ee2f89e47429f2925e015bd7b0025af4612",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "4d61ca32079050b825d5ee543a8293f52fb0cfca0d71d7c4bdd3f58cc689b73d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "4c666e14c1217bfdb3cddc3a61459c204a2228a23516b9897e387087dee52395",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "c2b5761cd1c32eb3d56081c1f2c31a28935e33610d57171764945f1a8d36d6f7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "df6e9a85dbeec4f8187d2694c790d6e90134024f34389acdd023f5ca98721859",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-headers.zip",
        sha256 = "dac88ad40484aaa6721d190c23b33668fa11a86e32877458285c2ea678db54d3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-sources.zip",
        sha256 = "5f2811062835fafb566f33c5fb08a3771b0bac9ad1d3601c89c435327e761b44",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-linuxathena.zip",
        sha256 = "d12ec6b78a3453c5e3cab275827abb1be2142e077532fc7dc32d03f36d04b3e8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "1b3ea1f6821dc314b43433b05348f130f2425b7264539856d9e2cff460866ea0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "c50e11d6feca3042e55c579a4cb9ead695b1f2d6ce4a0d3599533bd83521e7bf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "2dbc4342d770995c7a53ca3fa984e55947a1049bf2a561d145671318c04277ce",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "b2353da4a8a68580a2c8aaaa348b80fc5903fb996c9747650735cdc272110885",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "4e514fc8b168deb158426ed436bf3deb47a174eefc033c2fe1bb5603a1220a25",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "f8915484e5e89fa69f353bf90d1b29bde1637527c430de3285f558383ea2fb47",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "4f027761946c20e149c34ce04759cbb0f670b3c42f48e95e57b6f52e4b720de5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-headers.zip",
        sha256 = "20822383b8a56d781f46a60023f2c49b3e80014af504b74a6793fc034cb1c13c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2021.3.1/cameraserver-cpp-2021.3.1-sources.zip",
        sha256 = "31d9f6efe66288d658d3a08b6105e74e2c03d580989518e32922d1296f2f11d8",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-linuxathena.zip",
        sha256 = "53fed9fb2526f52f88571803e63a35337f173197b19f041fdc70ee82f5846eec",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "d4eb9c49ffcf805485bd549bd7dfff440bd588f37f4e34f3a51d345c098564c9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "02f8bdc027ac0779f7a97f2ac0996cf4884600868564a6534edef4eed45cf426",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "457668d0e9833e96e25c3581b47d6855cecdf137f79f906cd8c104dba0415791",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "e54461b678c838320304a28341c8031ff5d5d80cdd851cc525a1daa0f394cb1e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "b91969af99b1969c5af20a34b6627367b5399898db87f7b2b43c33a034065eae",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "fdc8e2f772da4069afc5384952687204adfafcd6ec14ed469f2b48d9bdfd044a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "c4aee6b478a94e518387d91d00781a634582556a0bab4ef599e232423934befb",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-headers.zip",
        sha256 = "4ff4560b32aaa664ca0869412c5ddd2bc2ed48ce9d9c771ece7a74c7df787e40",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2021.3.1/cscore-cpp-2021.3.1-sources.zip",
        sha256 = "3de03d13598fde4c17b0684d446ffae5de77104850676b8310b37b369caf9a6b",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-linuxathena.zip",
        sha256 = "e2ae71a3c8a9b4d144c193fcb8096561a5a92f459b01526bdaaba9116bfb9c6a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "c733bf8f0194953f60bc64f108581333f02efd4b7d0e12f8b426310f4bf17c0e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "8677a4271111da9858129cc4e58ce0a7a1adc5e4c655823f007fe2df744b40c1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "d696d66e306ee47a30bf64ca4909956024ee2a3295da7c474bd6c5c4977a7b43",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "6b6364102bcc4800a9c81bdb1d74a5c695270ee298ba42f60c52f81b4cfe39b3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "4384c9ebe079b16846dc87adfbd95afbc5547de029b916a37628781721b90d26",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "06a81f34d00801dc3321066c05662ca4030b75ef42f82ea67bac64978fb90b49",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "1994a67f1f7f89dc6710b2dff949687575d6abb07e0c7a3686e1f3129f904d10",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-headers.zip",
        sha256 = "191e03caa058c460e57fdd0c8e1557eb258858b4acfe6678cc1be63be259b012",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2021.3.1/wpilibOldCommands-cpp-2021.3.1-sources.zip",
        sha256 = "e00e43e0f6c4d3b8b89cbb0ebfdf668860866611552f4387bc809a6f8fd69518",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxathena.zip",
        sha256 = "5e3311ef761b4c79ebf67f78aed423d1650f3477120d4c483925e6b4c9d2eec6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxathenastatic.zip",
        sha256 = "bd1665c0d1be010b3411675688b93d9cc46f6e0debfb2f61df52e837628f01ea",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-windowsx86-64.zip",
        sha256 = "9f819677632b807a7157b953ea81a8544cd5b31bfa54012dd1b3402dbdb5f748",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxx86-64.zip",
        sha256 = "208a85c8d238b17770fe1602fce027819d5b778eb438fa6ae09f971254f90a81",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-osxx86-64.zip",
        sha256 = "fd4b06175d22183ce97b0f8e2f47a103d8c32b45e67640d351ebc38e42c397b8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-windowsx86-64static.zip",
        sha256 = "f680e7467d1ceb26fad5872401d2b35fcc6fc4ecedd06eda48f58430f1377e3a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxx86-64static.zip",
        sha256 = "6d89c4d8f5a38ef2beaf7dfdf756ca3076607b15a8eeda1677b0859e29e1e0a1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-osxx86-64static.zip",
        sha256 = "9f4259f4f6f6b7979bb2bede29bfe034f9bced09e56c2f377ac0bc9ed5c974a9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-headers.zip",
        sha256 = "c919969657ce44a5a20cc84140997149082dbfda5cda7f170b68d2e94744921e",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-sources.zip",
        sha256 = "275b94707db95629c53bd4afe3bba53ce996ea96e97816a232afb0c15a527720",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2021.3.1/halsim_ds_socket-2021.3.1-windowsx86-64.zip",
        sha256 = "ece35a6e537c278d4e723d06f38b70248d268e77ff03642446e3ef407b3c6ba0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2021.3.1/halsim_ds_socket-2021.3.1-linuxx86-64.zip",
        sha256 = "fed2c510c7d1306914fcac1e07b8b0b09d61ea12d92afc70714d6843122f8128",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2021.3.1/halsim_ds_socket-2021.3.1-osxx86-64.zip",
        sha256 = "72906f39507b6babe5864929d0c32d40b4f688615a36113ceefc07c323429b10",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2021.3.1/halsim_gui-2021.3.1-windowsx86-64.zip",
        sha256 = "6f7c04b1f1a17fced091b9057579837ca82909e17565140be77ffbd9eb6db679",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2021.3.1/halsim_gui-2021.3.1-linuxx86-64.zip",
        sha256 = "d77274cc63b382163b7c24ea54ff2b54570d23e109f7d3488785d6b9c263023f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2021.3.1/halsim_gui-2021.3.1-osxx86-64.zip",
        sha256 = "e5da5864c4c75367e7627f074b3351a2031c1fc56f3a05f2ec42dc20e819aa4e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2021.3.1/halsim_ws_client-2021.3.1-windowsx86-64.zip",
        sha256 = "80071475655a31cfe3c49cc1dd76cbf1136c12935789c279ff6727bc3dba238a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2021.3.1/halsim_ws_client-2021.3.1-linuxx86-64.zip",
        sha256 = "da3cbc93ac263b2ccf4de7945d31861b3f247b7c42089cc9317c96c627c68537",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2021.3.1/halsim_ws_client-2021.3.1-osxx86-64.zip",
        sha256 = "e4ec269f9f26240bfd4c7711ed232340477c2e11be8594dc8a7c2c1a7591b39d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2021.3.1/halsim_ws_server-2021.3.1-windowsx86-64.zip",
        sha256 = "89e3c28065a95adb925ea24813838450da10a585d4aaa837d18fe70c3c1db61a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2021.3.1/halsim_ws_server-2021.3.1-linuxx86-64.zip",
        sha256 = "ccbc351ded760015279e74ef0cbc216073714cb72b1f2ef04253ab38861d19e0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2021.3.1/halsim_ws_server-2021.3.1-osxx86-64.zip",
        sha256 = "4810a7254c60d1b90eb840c705aa30f0a326964b16eaac70aac70bf51d691eae",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2021.3.1",
        artifact_sha256 = "9a29c4f952cc1012042da3f4df1b54a7d525b010b690c19ffead09519a157df7",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2021.3.1",
        artifact_sha256 = "85f41c78832a9b14367e76d2f8ee24b9b7162ac8eca15c123d9b8a15550b3e5a",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2021.3.1",
        artifact_sha256 = "545af9fa528be65e6a89c4aee355dece300a38b6861ff0d29a5638d5e479b961",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2021.3.1",
        artifact_sha256 = "d35f31eafe9aafb508ab39c5d273ff6a33d594fd0a7409c8aa9ffcf21ec6fbb2",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2021.3.1",
        artifact_sha256 = "a18049c63220b1803f345498d447bcd23830aac1b23f533eaf082f74d626a7df",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2021.3.1",
        artifact_sha256 = "7e3e77bf3a28df3e7f0c12113fc2b0ec0050f9ab11a50182cafd4b2eeda7e076",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2021.3.1",
        artifact_sha256 = "ce387ca358d38ffbc390ea0478ebf835e40bd3c4f2c71d79bba4fcc7b4b0aa4c",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2021.3.1",
        artifact_sha256 = "6a706e56e7c71a201e0c2794fff48b59520990bb3a0aa8693b8e9e8a471242dc",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-java",
        artifact = "edu.wpi.first.wpilibOldCommands:wpilibOldCommands-java:2021.3.1",
        artifact_sha256 = "7158b8b26586cb084ab0882b7a75d9749696932670ab5f73149768dea40fc99f",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2021.3.1",
        artifact_sha256 = "fbd0cf5269ef2f265ac1898aed87c075f7ba0ceef2de297c092d7870da8f757d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2021.3.1/SmartDashboard-2021.3.1-linux64.jar",
        sha256 = "b885e855f3a7ece1edd3039d777748b88c65142e362afdf758e6c984b51e6538",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2021.3.1/SmartDashboard-2021.3.1-mac64.jar",
        sha256 = "0d339363d212f8e76ea3ef3f85bd2dff06898d738f858c0234298dd09f7365c9",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2021.3.1/SmartDashboard-2021.3.1-win64.jar",
        sha256 = "b4f868f10d4c348d58d5f5ed1c01fb1e35808e16da7a398960f235db43f42ea5",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2021.3.1/PathWeaver-2021.3.1-linux64.jar",
        sha256 = "70955d07a4a084aaeaee62f522763c2c5502d4151489343bb7f40f9970a7ced5",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2021.3.1/PathWeaver-2021.3.1-mac64.jar",
        sha256 = "df296767ad1d2f628605ec3a1cfc521a5918c283bfe696f179334779d77b97bd",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2021.3.1/PathWeaver-2021.3.1-win64.jar",
        sha256 = "c5d94daa925e589501a8060682f2e732ec685020812b9c73dd817057446552d1",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2021.3.1/RobotBuilder-2021.3.1.jar",
        sha256 = "b8209714298037dd52c89d63eafb9deb547f834e78bd05d72a4933b920312d3f",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2021.3.1/shuffleboard-2021.3.1-linux64.jar",
        sha256 = "705ed0e31a207e2b764a4ba597dcefc1073a11fe85df0bd97c56849f5e8ee7a8",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2021.3.1/shuffleboard-2021.3.1-mac64.jar",
        sha256 = "f329a2d9f0ba1ca7cacc9103a48f549eee53ec6fbd8fd970769ad8d535ac5bf9",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2021.3.1/shuffleboard-2021.3.1-win64.jar",
        sha256 = "bff617803c0ae78bebdaccf0ccfdf0761b1e077952469307bc73011e394ac8c2",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2021.3.1/OutlineViewer-2021.3.1-linux64.jar",
        sha256 = "7954ea574d765fbbee52d69f6dfca27285c53b95cc9fd88e43000a398b07eeb4",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2021.3.1/OutlineViewer-2021.3.1-mac64.jar",
        sha256 = "deead63d1a8fcc8c024dbc682056929da5b729981bbbbe620d03b1ea997f3e63",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2021.3.1/OutlineViewer-2021.3.1-win64.jar",
        sha256 = "cc4299a4369acf03670c8d7785ee89a42f45532b69a679c6fe66f518207628ca",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2021.3.1/Glass-2021.3.1-windowsx86-64.zip",
        sha256 = "5ed54addfecccbd5fa1d190b15ad6fc7c29d34d3084201f5390c676d6352102e",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2021.3.1/Glass-2021.3.1-linuxx86-64.zip",
        sha256 = "7d4fb06ee9ee5b0479f940dd01268a04667cb176aeec15183042fa404f8efc1d",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2021.3.1/Glass-2021.3.1-osxx86-64.zip",
        sha256 = "b111497f49f8cef4f2189ecf34e5dc08f9558fbaa197c5ea7b6f842fe00e6d71",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
