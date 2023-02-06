load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2023_3_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxathena.zip",
        sha256 = "30184fd937ec2c4d3ea286afee3c4b53c68eca07124117ffbf1ed7e683c1ab4e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "b1daf6a7b449c5dab3368fd85ad4faea3c5c40d1be7f1f54e44e12caea93cbb1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "a3a6bc7c37391b4d070144478273b3eafabeb358636ba69faab7f6d11cb1d969",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "d46bb3d7b6a807f567fcbbe07d3d10010d98abbb5d7c6cb5cf6c206d1c84da47",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "1b5c98495ab1cca127b3af906660fa6bb27f6a5aedda22b2693043c3932b7589",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "5aeb964bcd48c89a040cbf00adaa90a99e71e61f986989f08807de4df7be1c97",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "da062f5ab583d3c8207781d076e53d0507d40ef3b7b6d140bef51c01b6e66320",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "a167623a6778729ceafb149e7df758ba06f86220f4bd2170c2c5a0b2b4dfcab0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "46c553adfa28272f5264568ea54118598346d86df16c8defb99dc0ff6eb1b951",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "87c643d48a9d2eb2068395f30b1d749a827624f3ccebcaae1c74ccbc68a3601d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "93e84a083a0917ceea963c349bfc6646e5531572c09bfcc54c0105ebfff9105b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "8ac5a020dee07fdb65237a4336e1940e1f8a5d67d8fd265e6ffe2c1dcef7214a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-headers.zip",
        sha256 = "1786d372102ec429b3b04d8cc348d1ed16a6c72e216cc0c0da68ec9dcd3a92b0",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.3.2/wpilibc-cpp-2023.3.2-sources.zip",
        sha256 = "ef0a0811dd855e857041991421302995b8fab4f9238f3a16c327e02d227eeec6",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxathena.zip",
        sha256 = "e36b1d6a351ace18ed2f7cd352c9ec1fec068b65ee70f23b5f7afe9a474bc5f8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "fdee6821186126cd12c8482cd1c0454233438efac7596987aaab188cc92461d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "9242d4371b6ae0755c9aab519ec4ba3131cd87e6c84968b876f74a758f2efe35",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "4b4059a9308fc48294bf2384da8dc44bd816e9dd5fc2d792fe74a995673092ee",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "c12dca0e8c7615f5c97dc2b59be1a8244099d8299d19a13da47ff9eec4ecbe21",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "50935904f5d79df525635d466fcce281e43f2d931191e41497b3eb5d8d2675a2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "6b19cd0755ae7990037c61f9a7760a65bb421d81a356d4c4c5950a8b74f7241c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "2d427d7b5007de0f15bb25f8ded79e4dfe172b3fc243989f9c4298e31f0e7a77",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "608a167e96a851bc8392530da2a163f1fc152ec8f68e2d75daa5701dce0168e2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "cb55d20b579e917376e2e2172e66c91c8ca82a0a1a445adf4b4016f0a7175488",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "5d97ac0ba3cbf1ae9cdd08812f2a3216ad0aab071c0ea2fda6114538588e81d4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "8f3dbcdb0cb7425db56e78b9cf526a0ccc3822c5faa714fc0c17dfbb1373beae",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-headers.zip",
        sha256 = "37c3db2b0ec3b7a52adef0ee1ee502b2215cbe93c8fd6baaf34745bb43b44315",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.3.2/hal-cpp-2023.3.2-sources.zip",
        sha256 = "f58202a307174458f0dddebca0ef507c98d2b17fb7bbbd8fa902bffb0f0f88d6",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxathena.zip",
        sha256 = "2e756f3cbda5898921a881f29222ec244abdeb174e93b6f1702511a866cfd6d6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "21ee4bb984e591cdaeb999c72c9ed3c37cea32b7b531beaf7cc66c4984109e02",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "61092799518b0bdd890eeee08ae8fe40efa628824dc0ab4d5f78a9ccafd6e160",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "a878040c8fd8ddd20ac55389335f9dd5964927d6d18ccab1477a0fde8b075c3f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "1bb33b1d081c7be991bd874e3c9154a16dd0f55501bd33ad0aef638529af8f97",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "1f7568fdbeb0cd00940f0e15b051095811ce7db4e2a46a4bc2ef652b81bea463",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "64c24d71bca5c88dd3017f2b85c3c696d07b24cab9d7e9f3d2e81e4fccf5396e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "590b67f0ff9a5a981101d72ed1dab85c6987020bc05e5354fa72e7182c4ae767",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "5b67a9ff883d48ca713df91a88151f08ea51a65d2feafea509e1d5f71cccc139",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "43cca85101a69bf7d7cb43c0a5613d2816489ac39ea1bfa2e403c4fc327e4c18",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "c1c5b08921fada3c035c60877e7aa5c4a490977a1524f4ad052fd104a96c0f5c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "ef9b229aebdd9e957b9c2a69439cd8da9bc94424bb7aa269a1c99e4a1f84722d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-headers.zip",
        sha256 = "4fb3ccb42fe750ccbacb7bf1d8d39ddee60e87b801d0ffb3c4a44ba32924d131",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.3.2/wpiutil-cpp-2023.3.2-sources.zip",
        sha256 = "6b32dab48a7ec963041eb2d234fad7f645d213f3123beb3050e25229a40d4453",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxathena.zip",
        sha256 = "cb47d6cb4ac886b133f9f9bded33af22461d910f7f0085d83fa0f4a3e26ffa0b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "ed29f1b666b406b346133497c9f635036f9ce88367e55b8aaa30df82b596a450",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "62c8d9ef02183e453a8629b97aff4dc094abfef4486b717ab01616287ea7da73",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "8b191c8538f1798812b244772d523e179dbcf3c81b10fdd2b8ee37d7d463df9b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "dcbc06a4a2fa5385aed0a8c7af43a7775654e0aa699642984a9d1465b7be5959",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "a327ee0e4b084d8d59bde460cc4edcd210a15264a9c50737515599ebec51e6bd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "39da09b824404e9904472680fbedb5e076923ed410382d34a28c90d7fc5328a4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "bce846f7207f09c6b6dc04f5f233d6ca3e46003b7c8d79473c55557e774fbf0f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "a29e155869223f87c04773204e19377a15d08d5b30c58135873c9b95d8ddc305",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "6cfebf47989925686d5858539d3063f7603ff91f11da9bb8a18e0d43895049d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "2b6801355c65faef02436bd699a06d04647d69fc1f95a26dc4a2c650770961b9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "76b84313031186b253873b72f77a79c3ba8ce5bc295b2d1e0a40b448be7a09a9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-headers.zip",
        sha256 = "11ad8426b0a01090fe8a1db127c8c476714e35df369f95f494d2178a28e9310d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.3.2/wpinet-cpp-2023.3.2-sources.zip",
        sha256 = "a01f2a714eb4f75d6d3d5bce30101bf3200ba7c47b4a87391b3eb24e5a28709a",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxathena.zip",
        sha256 = "1c91cff67331f72e95fc658fa38f68d5d69dd0471d591b0bbff0a116f1796f25",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "3ab2db79a1dc131d0cd521c5bbd6399b8d5f633ca10332461fb5d5d22dc13d7d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "55f1961e19b35c110735fa8b389cbce09d75e931bda80fa254aa808ceea1f032",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "3c3f18f4482b878d66a36881065da92585d3afac4667add6fde42859942311f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "31b1f01abeee1be55b511a3cac897ab7c85a64a048813a39b97916ca9eba9e88",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "734474eff040e64ffa518eb5a04776e93101580639b1339d58d1754360f0954f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "7fb9da919250ae877100cf8dae469e3407fe94e604ae75a8d52bf99d90bfc3b9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "de33376957c20a7d13b7d45a9990348a9fb14c93a8c0d771f170217da44f75c8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "95d3ab344437cc2e2bb7c7ac92aaea294e4d92617eaa17f6789898a9fc5938af",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "4fbb61c55cba35175364272eed2149aa040479ab1c3c729bd6fa8d3fc77a5bf6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "3066fffe217ac13866c59cdad2455641bce67d2068443393b5f62d793b5bce7d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "602f15b2cbf6597a3f115e6a9afbda99bed3c17abac97699804e395d0019188f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-headers.zip",
        sha256 = "71eafe0ff922b1f089c815d3769ffdf7ac338d0c135589860009a9fbcd53b85d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.3.2/ntcore-cpp-2023.3.2-sources.zip",
        sha256 = "63633c0c4bdcca32ee2cf8b28e5142158483b6d4fe9676cb8e00c2987ad71232",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxathena.zip",
        sha256 = "7cb445de735ab8bce5591105a299ec4f6bce9376f4909edfa13bc84d04cdbfb2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "a623b217850e7b74184c676a7e1bd379d315572f8e94112cdccc35e0a25e9baa",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "0af745c2a0b7322f28b7b8346825a6beb30ccc97f708e90a220e1e08b205713d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "37cf340addb947536ce283b0ef0370422ec7aaf1b1ecd6a5e622d1f7e9b6c89c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "bd165c34ad1f9d35cced4f0bf3c528406595e228806badc977801b87f982cd25",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "f5ce48e97b65b80d74629832a1c98d32b07734550f6f21786a4bc29864ce03e9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "3ccd74ba2fc065d8543c3dc56d592312aefd3bb29d78f16fb38d294fcac1dbbb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "146122094615f900e98593958e02d62c81cbe0cf555d508b3dcdbb2c0951f3a6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "7928cfa0288c021fd86c0ca1bc156f66db084862785545cda866918d10f8f0ff",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "e570eb1f7d6573cfd83c46a7bf1bc96ff32bdc45bb6bf523e84663a9b5ec7d5e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "130cb4644e86294e5b004ff7be9d06e6abd8da143f0f5382f73d2bf29e402615",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "185788d7696f03f77b249eb0aad3fd97d13d9329615d16bf90720b21929072df",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-headers.zip",
        sha256 = "2dc1835fd9c784d4d0572f7eb76135b65c8c04b2aa4273d87ee7678c8c5877e7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.3.2/wpimath-cpp-2023.3.2-sources.zip",
        sha256 = "73aa7d16be9929e4b230fe8843137aa6421b3436bba46806449ebce4d34223c2",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxathena.zip",
        sha256 = "d91ea8f0a28ee75e154b60f9a3a271f68a36c252c5640d07b2435bd9b8c84d3d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "e82838e7fe6ea289aa5c4436c99903290010aa3954eeae37dd6417e8a031f91f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "fc2becc38650de5b540eb45e290fd4187d398da155d1d6e4a463cf72938e01bb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "5cb39315528732ab4f47deecdc289200b9c8bb9bb9b18a00ff67fe565603a248",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "08d0f13bf704e8247e8f56535b85ea829a0ed4826f2caa6732eb1e59de5ab3ad",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "b1ab10ef453fd9c7e1f0a10f88dfa72371e3a73764523cee978170b5d058d23d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "3582ab3b1bc0e3e12b25ee6c3efd25bc9ce17cb33f1a85b5c2f34830e8f85d71",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "ed81501463dc60e257e3a4037ef6a56c96bceb8b975c73f7103c117e9e19ace0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "a0c85ed842094791ac3434f1f95fc9a7acb5a3630466016eb179f6793e51f23b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "beae59b0aaa876aa03e4d32b6b09bfb546ab56f0d41cd6452edd708677dfd910",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "0fe0f1cd52da0ea85d1509c51b202c202d7c8f5c7e3fd2b2d17ece6a50af3d5b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "6847d5e6acede6c162d9ee9b6446e078993efaea3483e419321e048c21d7e65e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-headers.zip",
        sha256 = "35c176e75ac7fe15aea217919406bcdddac8bbaa67f5a387bbf5605524d52e7f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.3.2/cameraserver-cpp-2023.3.2-sources.zip",
        sha256 = "4c9dc66ec5323a8bd048f67b151a3b875f69f43ce6baf18d5e8fe7f75e7e90be",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxathena.zip",
        sha256 = "03c3a6c1afbcd9110d11fd45e5e74cab60e57cb4eca1c281e39fc27fabaa303b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "8447c6188540b96f4a43f8188d370944460a550291e077e5315d8a36bf54e20e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "a1310aa894700ae18ebe9bdee0f12255c6c38714f94afc5b4f99bbfa9403e225",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "8c7ad595d4a9a3f3e46e12d716aa6a7ca4de9de0e81dcfb167a0acbc7415cf89",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "c47bcb4b5bb1268e3c1e08f843da09ba14c47e2905ada5cd6bc83eadb1c19643",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "341309f15d97913b33a1a3789203488b8806810f4ad3d035486b6cc6b540e4d0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "dcd259d02537ba4f5afd957d6eedfb49e25c56dc7e765cf1d1ef6266068ff021",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "84d0631afa551b99767490b0700513d4ac55fdd1452b0bc5c4ffe1af3f6f4889",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "f5a37bc682a9a6027fc07d93d42f82c8eda45497ab8a1d71b78c9f46102df7ee",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "9723d78c0f113987cce312284831ad1dcd4758f65e1d2f58bc39fc7266b85519",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "7ee8a48c9c522b7e3bbe3f6f3a3a3d349c97f60bd697738609e8aa7d9a973945",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "00f2f1ec63f76f69ee6f9773341991d663352ab356c076759d44833700fc62c3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-headers.zip",
        sha256 = "a4dea9c946ec147c5d9b302757406fa84e8b717311bab03861228f0d596905d7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.3.2/cscore-cpp-2023.3.2-sources.zip",
        sha256 = "b8fade05d9fa7f944e825adcb114108697cd5302988419626421e25d3f871b75",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxathena.zip",
        sha256 = "684643b1df8f8a961dbfd76b1445058cb24bc7be296b9a10591d54f1398e5ae1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxathenastatic.zip",
        sha256 = "91a59b870a6cef0e26566e4a5c7f95bb283ef06002b7fcdf272cb69da6b1d7f0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxarm32.zip",
        sha256 = "6d218bea93a3dbf8d595a967422f4e22d8811969fae9dc373ba45de130c1d615",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxarm64.zip",
        sha256 = "6bdf0e834907ca4b7145b2e1d08c6367445a05a6fda82800ad2655dd068e5538",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxx86-64.zip",
        sha256 = "05d7f7e8fe9ba9da6dcfee0c668f4e823e39b9c288124f48b81f37bfb1942fcf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-osxuniversal.zip",
        sha256 = "c7d6fb689d1cb5ae6cd882b6e40db52c614f56ce60e1595d0ae3f38411ad6492",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-windowsx86-64.zip",
        sha256 = "b245a1cb1c9ceb0a1165fd6175cbc7d6012fa823cd21c417133ba98ba323ba62",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxarm32static.zip",
        sha256 = "42fbcf9c46257b64a19cc1a5abbe83b90f030ca96a2bacb2f1715158ee48d156",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxarm64static.zip",
        sha256 = "b1e85d75306eef67c0658444ac57ccba46a6165b0ee18b39e3f4b580fe8524f4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-linuxx86-64static.zip",
        sha256 = "b20fcdcde7810929c704c1dcb97f97c783c933b42fbd6839b612f1bbe7076815",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-osxuniversalstatic.zip",
        sha256 = "80580d4c7f096f1f8fa098788a7c46195173d2a1a389ac5ee015612c86fe569a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-windowsx86-64static.zip",
        sha256 = "d4fcda9553b3d2d51c25a267b29dc0c4a7248217daeb87e061760c6ce0ad9ae7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-headers.zip",
        sha256 = "2ebfc2242cba5f1495c81c0aa411c17b620afff916b39c86f394e0046fc9067f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.3.2/wpilibNewCommands-cpp-2023.3.2-sources.zip",
        sha256 = "b224aa43ae78a8700451a32e001c8e5620dc5afdd46f23910a6549f558ee18db",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.3.2/halsim_ds_socket-2023.3.2-linuxarm32.zip",
        sha256 = "c9037a81ebab0031c975e8448bc8d93202c350ab0f92b2d7c1e4c0bce6dc6c10",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.3.2/halsim_ds_socket-2023.3.2-linuxarm64.zip",
        sha256 = "e1a0b716cab0a185cd4d072d0c3db4b2308038e76fac82f3eb8ac68c5e154865",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.3.2/halsim_ds_socket-2023.3.2-linuxx86-64.zip",
        sha256 = "180dcadb97af1344828382f10cfcb568d8ce6e2f41ef9ad7748cde0ded1e9f45",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.3.2/halsim_ds_socket-2023.3.2-osxuniversal.zip",
        sha256 = "e7bb2c5849a78f80eb8bc7648f2b0b9b1afeff2a25f12e7a61ac9042725528a7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.3.2/halsim_ds_socket-2023.3.2-windowsx86-64.zip",
        sha256 = "312138ef4f927f4fbdcd134a0246533f13de343c302be9293a6249a10adbd5de",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.3.2/halsim_gui-2023.3.2-linuxarm32.zip",
        sha256 = "f64ef3ef0d29bd10b5e4587abb738b032fef6bdf9bb64b38557ceda0fec582f0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.3.2/halsim_gui-2023.3.2-linuxarm64.zip",
        sha256 = "f89028cf57cd98ace6a7f6fecc1f93f822432ce6610f71d3a8e795637d8feffe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.3.2/halsim_gui-2023.3.2-linuxx86-64.zip",
        sha256 = "84bf53cab55cae5b31fde931623502523f5b2fd17acba5d02a3bfd51052e2a0b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.3.2/halsim_gui-2023.3.2-osxuniversal.zip",
        sha256 = "d8bc71e87afd0b1d5359efd5d1e101a85debb50a91bcc33d04faacb0f4144635",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.3.2/halsim_gui-2023.3.2-windowsx86-64.zip",
        sha256 = "f0cff333c28b36201711e6ed8979ba0b10e8226b689d4c583e092cae7c7279b9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.3.2/halsim_ws_client-2023.3.2-linuxarm32.zip",
        sha256 = "c0210080b9f5b47b1bd7514863d94e4ba3c96421e5b12342534e3c6db37d4def",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.3.2/halsim_ws_client-2023.3.2-linuxarm64.zip",
        sha256 = "a8862308f9cd04eb9bfe6fca91eda3f33c893555d28f1cb21f93b5948bf97d00",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.3.2/halsim_ws_client-2023.3.2-linuxx86-64.zip",
        sha256 = "fa6dfc94807d551b1f2b43b2a024a2b4eed2d13f86b965773ee41fd24330d32f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.3.2/halsim_ws_client-2023.3.2-osxuniversal.zip",
        sha256 = "4c14f0beeee507eb193e333491b0f1df31bd84428c23baf608aa84f93c8a6be6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.3.2/halsim_ws_client-2023.3.2-windowsx86-64.zip",
        sha256 = "176f352cbcfa980d2474c9479a7f4cb99bd342fd2cae002ffa712f043a258f88",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.3.2/halsim_ws_server-2023.3.2-linuxarm32.zip",
        sha256 = "bbf810d2940b67b6dc9f0b471705a778f1b3228c575ab4705d25b41dfce77ad6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.3.2/halsim_ws_server-2023.3.2-linuxarm64.zip",
        sha256 = "8dba53017b25131a503a803b5f91bd39d5a42c16f777f7393507ba9388e800db",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.3.2/halsim_ws_server-2023.3.2-linuxx86-64.zip",
        sha256 = "fa6cc770c644aa40745355de18e5ac2d019abdfe95a4eed9066634887a3eba5a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.3.2/halsim_ws_server-2023.3.2-osxuniversal.zip",
        sha256 = "aed7582ea137ea580cc1c3676f5f01b6e2cb692a80d7d690c82fafce6cdcbcbc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.3.2/halsim_ws_server-2023.3.2-windowsx86-64.zip",
        sha256 = "e01b2df14a47b0daab48a7b7e621c6456c29464fefb491f3af9720e74ca8f228",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2023.3.2",
        artifact_sha256 = "c575f72841c933eedfe19d01a72c7016fc48516e1b52bc16c10ce704ca1f27cd",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2023.3.2",
        artifact_sha256 = "27a124604cc5a76bc7d3e66d64f0c6463e9ffbec24e27385acc3589c15d2f7cf",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2023.3.2",
        artifact_sha256 = "0b07b49c445fba3a205b1c9b34a04fe2fc9fbc65799add0eff3ab7be57f5c042",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2023.3.2",
        artifact_sha256 = "19b7494dbe1f02d922d9c6730b79fe4959fad971798d98d4ec8b61d58cf46f7a",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpinet_wpinet-java",
        artifact = "edu.wpi.first.wpinet:wpinet-java:2023.3.2",
        artifact_sha256 = "3c883d897a240120bbed5d76bf13ce1f93b1dc8837f1940f95712c4ac5bf0c29",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2023.3.2",
        artifact_sha256 = "0e2871bf97dc3578f87912eff674c4968565e6760d3445c5158dde9f13d22f10",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2023.3.2",
        artifact_sha256 = "049ed68eb977612ea0ab54b6cbe3dd3d948a714a5097a26dfaeaaf55ef0d7cde",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2023.3.2",
        artifact_sha256 = "cf2577aa0cc9cf289c64b172af02e0bbcb9720ad3b23323a56b84d208bc8cdb0",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2023.3.2",
        artifact_sha256 = "53dd1ec1be8ad58245b2bb5880c20d5771aa93bb3e247a3f7580851c226df7d3",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2023.3.2",
        artifact_sha256 = "0c4b49075d1399bb6025fa9e65cd1553a0f6ed5bc5f83ced482ff3570b042a6d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.3.2/SmartDashboard-2023.3.2-linuxx64.jar",
        sha256 = "62868b8f1c01e29686cfeec05f1c3499cfbac8ecd604aab61602b007903ad169",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.3.2/SmartDashboard-2023.3.2-macx64.jar",
        sha256 = "003ac9992cc69c80a73d1a14f379c9b44c2753456b457966dd3fc1a76ef445f2",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.3.2/SmartDashboard-2023.3.2-winx64.jar",
        sha256 = "9a74951d8b9bed9fdf3d938f01791a27f4dcf604fc0600266fca51885da2f3f1",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.3.2/PathWeaver-2023.3.2-linuxx64.jar",
        sha256 = "f61ac447d87ec9b89778399da01bc5ce3475608a48c33f20800275aeee302de0",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.3.2/PathWeaver-2023.3.2-macx64.jar",
        sha256 = "f215ebb1e6b11a4416f6b125ae60a7f0ba25f913cf8f11000da2518281ec5d03",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.3.2/PathWeaver-2023.3.2-winx64.jar",
        sha256 = "42b6ac66312fa65082e4c995683d464102c04e444a24a778051c9b7c43a5c942",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2023.3.2/RobotBuilder-2023.3.2.jar",
        sha256 = "44ed48d428b9eebb10613b07715adbf420705c69f2978d2591fa52a367cd2d99",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.3.2/Shuffleboard-2023.3.2-linuxx64.jar",
        sha256 = "6fb9922d5849f1e009cab329b08816e6785d06d8e7c46af038ffe518cffb8675",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.3.2/Shuffleboard-2023.3.2-macx64.jar",
        sha256 = "6b5f4053f10678a5f2fb79e980732f35964b2b92b491bb338f1ca63da28395a9",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.3.2/Shuffleboard-2023.3.2-winx64.jar",
        sha256 = "a8fe4a65dc7d4f58ad9af32aff78af9ad1ae4726027045fc219efb0df0aaa106",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.3.2/Glass-2023.3.2-linuxarm32.zip",
        sha256 = "a7f91910c70494011d9422aa0e51b966ab5f56cc4aaf35ca653548aaed678b11",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.3.2/Glass-2023.3.2-linuxarm64.zip",
        sha256 = "d324228cd6179c97740937b1a22b03857716c4688228aa098190f8257482d58a",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.3.2/Glass-2023.3.2-linuxx86-64.zip",
        sha256 = "42546204c635364f19013081c6b3af6580d884e9bb07c1753c2b7383a8b84a7f",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.3.2/Glass-2023.3.2-osxuniversal.zip",
        sha256 = "d11308eead554233a435aa68d78124e5a7964751432ef52b3beb33e25138a89e",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.3.2/Glass-2023.3.2-windowsx86-64.zip",
        sha256 = "f374b0361d582dc40aa58f37eac526c74eb356c3dabe136174527caebaaccf3d",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.3.2/OutlineViewer-2023.3.2-linuxarm32.zip",
        sha256 = "e691ce192bc7f626d7969ba5472f37a12d49382da5d5fe30ca642ff6376a5ae6",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.3.2/OutlineViewer-2023.3.2-linuxarm64.zip",
        sha256 = "87f075c4dee9f2e1b5d6cca4e348d41465c5b183c15fffc82ed8a9bd94f662d5",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.3.2/OutlineViewer-2023.3.2-linuxx86-64.zip",
        sha256 = "4d99e8da4a91e8eac3b946b0c43584f4d637d6424376b49aed858ce3709b74bd",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.3.2/OutlineViewer-2023.3.2-osxuniversal.zip",
        sha256 = "a8b28027d13694d6e0f1be968ae18b0a627eee23822a66c16276cf3060d1f623",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.3.2/OutlineViewer-2023.3.2-windowsx86-64.zip",
        sha256 = "dd63a18b4c8162a9496144cf321ae86a84d08e0c1692685bfb62452781052525",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.3.2/SysId-2023.3.2-linuxx86-64.zip",
        sha256 = "99e38db84aa8938d6f4874e5f6223dfc11815398b7866a2b004496441e1c6ed1",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.3.2/SysId-2023.3.2-osxuniversal.zip",
        sha256 = "949c0811160104f19442baea3cdb330fe1065b40fc0fc1855468fcf68c1dd3f0",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.3.2/SysId-2023.3.2-windowsx86-64.zip",
        sha256 = "6bab93594aa86015e701fbd4fb8f5f44f3021c99c3eb3dc6872de813625c210d",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
