load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2023_1_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxathena.zip",
        sha256 = "beb7b66fa550f2673557c9a18098b8fab6afac6144c34148aed45c174ed3ee28",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "5884727d21836dcf865cf5e85f203aa159f33ba2cd73e7c15639ca7f3856caf7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "b0c496ff51a5bbf5148cce2bafa65a928fbc6eb0e1420d1b32a5dbd7ccbe7b01",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "0dca5ff33aacca1eda2c852c6e2d06a6f119c61af825c0eec99d304b38c7c57a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "2fbc4c418d09980f88284f8b47c6073a33f978c9bf18299555a237e90a324ac0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "d1a71eefb6c2a948ce80aabab0592bdb22cb2abfc524feff9be86edd1f15b1f1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "18e51118c38546a29fa4db07e1405d2c083cd72f7f966912a2929e7f41bbc7b3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "d5c083ce19276fe13327cca080b4af7897556fbecb58f6d2a10081f922db9362",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "eae1a83da6bcc4ea7f328527e00aacf01df0d3e28569a633e05765f01fc504a1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "9942ff8f14679c0cc37ef1b28cfdacb9158307995531b8fe883995d3c7644e07",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "14b772faf5a7b71c4023961ff4f5059d5efa8b63e9f067fa462fc086c42cae70",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "7fe18407c102a49941663e65c4c1ce0e87b89945ab224db7c44d67f3e6ea54d9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-headers.zip",
        sha256 = "b57b5fb9e2f81aa678e72559fe17124e7b074db758681287fe26e8cc1849f1a2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.1.1/wpilibc-cpp-2023.1.1-sources.zip",
        sha256 = "1901d5317e9adc5baa342455248381b03fdb013018de95ab09bfcb1733e8e2b6",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxathena.zip",
        sha256 = "d5dec6332ccd5655bfc956fb49531183c7befcb59d785c02fa27b5988c4e7e86",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "b5aecdb9251c0c92dc475fc703cef8f81eb5751c0468179b37107a7a29eab64c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "594782479a0192bc5c14127717fffa8f44cdbf4f410bb02b3d24c9b511b47c4c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "0bb376f83ecdc09bae78540291fc01832a6a54865cd62584a371d29261a57b11",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "f19ba56c4443fd8a2006f532c8b27b78c5b91a5b447fb8ffde22f2c8b835cb5b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "3690de2b80e776fdf949155cecafc15c2edf4168506e5b57b8bb2337885806af",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "de51fe0e777640c2ad2716ff43ef2713aa4211bce58e4c34fb092e389b417723",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "d3ed4fc7591b1bef29d4d81bafadf6af7b539d21d1257d107b4cfe8d7450f47e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "24d888f9b450e37157cd55daaeb6483af5417ed8357b5187af396c98a825a49c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "523b93cd7d7bbb3ed9d974b99c9affe5765e2c93fc4468b81f7299c739b7cead",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "c47766fd8990200d71eadecea1e7e0c499c2cd7d6103f0ad956e4369fb94e3f2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "b30875b22c75a2332c6ca7e5a2289ea497e7383abe8b761526a79ae4cc629093",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-headers.zip",
        sha256 = "ddacddaa98a8335362ce58a184e43ec19555cdddb27e0830712da77199c85e17",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.1.1/hal-cpp-2023.1.1-sources.zip",
        sha256 = "9d6a63402dd7e61271b3b00f30b50f2ee388cb46e83f3e2706216c6349a7cffe",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxathena.zip",
        sha256 = "15da2298fb5074f8ab088795a35d7efab9f89c776ef1a682fcf35198b452eccd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "d38f6aaf981e87e719fb1b117e45ef02679c96701a255ec416887c6d2b3f6097",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "894c763ecd2669a404ab5de0261d206497c94f7b80c502036b9274f4e1cc1a81",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "1ba44d3c0dfe2b9f9bf76cc4753d0988487a224d78ed740550b3dc40e876eb29",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "2dd66e562d41fd4f06ab2067688ce1c5ac90db1d078c52da313cba76ed5f3a5c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "c506f7af2a85bdcfa214fda59c107a2d1adb846c93b719589f6e897c6a214eb1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "20639b447d57af04ea3eb8b36c9e026c16380bfdbfb0fd2f4fe1f2754b11e794",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "2f530e01b68193cbfa6d3c98608005b231b532dff249153213de3e1369ff77ff",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "ada483ac27a8a68ddd46584b6f829e8b527d7085d45d2efe0194a9f84a7e7e90",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "4e87a27683a43630d837e3a7dccf638b96684ac747ac628674c4f813740dfcb3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "8ae3cff6755f1dee6874e1346e1191813d5505976a8e65e1b21a0fd1c03eca94",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "2449df9a585568aee0a3ae926680c4aad6a5787177be7014ae6ca1d6e4353858",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-headers.zip",
        sha256 = "4d6b2947c4a755eabf5008ae07c3a138cb4fd69ed6d826c2b254fe060b9ff912",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.1.1/wpiutil-cpp-2023.1.1-sources.zip",
        sha256 = "3073273f7040dae7cfae046c8c56acbd17ce3022b372e5e72a7b478de0fcc7a0",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxathena.zip",
        sha256 = "6365795ae497ab23cac3a7bb4ccb00d29d1bbf6bbb22ea350975986f6b53b350",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "498f148554955eec0d3f236ae00e58c7c5ce461622b8bb5aeac99b3fc7945fb9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "5624271d1493f32dbce453c7d73daf678e791a62651901ade9b61aa51ed0feb6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "4574e53433208a011920d6cb83b9a8d2683ede14331f8920130a7f663675c347",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "1d484d581a2c672f46273d65fa38839ad0f977f84a5b1d5b298b07604c8bef81",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "b062b929f0c1950c83c714e897742f741e093db3beee86d831f47cfc65412cf6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "7d9300791ea3905ab26fc082985f2d2214f37674d97f0282696a673037791841",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "bf4fab5469a8ed832b86c37feba97c6543e4425c17635df173864bd85b615c47",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "3a0a996bbabf4636debc4eeed43c78e5b4532801e152a2790dfafb6dd4e79330",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "dd0df5f6945d6c92991a1f668e8d9c975d99e94f3553923339e350eb74f4b905",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "e25ce3c028eb099e0ace08d34a6dc322ea164fdb6d6a8ab2ae2be08bfd0755da",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "8529d20e9d1b71251035dfe1f3ba8558afdfddb44dce226f39300c00e39d7f29",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-headers.zip",
        sha256 = "0bf09dc97410df9ca472f630055d28081dbe5f0b56ff0e821f7d38911ccaf30d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.1.1/wpinet-cpp-2023.1.1-sources.zip",
        sha256 = "5f34c57385203f412e7e391ee72d738a3609c16011f061f4a5b525dbbb835646",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxathena.zip",
        sha256 = "0236f5ff06068ed20e16ebb03f61f7fa1dfe04f2372ab8c59d20eae2cbc31173",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "1eaef2f5cc218a89a3eda93c6933f459f5ae5447896edd9feb829d7505a2bed9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "de686901e5266efa603c10b7ffc6ae4fcc2d3fb5575b9997a012a7d2dea6ed80",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "1872d4cd8d5d0e989b48ba6c9d21cd34bc3601503f5f1a8491140c3c1f93e41b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "7c71c96d4303f946738beddcc77e0c4d4959da28b13b3e06fd7f00be9d7efffb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "7dcf6dd7f636db762ea19252c97c29a750f9db3094d6ab18b3859ce1646c5095",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "d91ec68841f02e48ae653b2d21020468b3eba69183da876644b72c0f357707e2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "f0ce319f2a3ccfdab3f4c4dc4462379fbf5c8b8c48d071fc02a1daf117944609",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "b4c00c3a04f1e3669a5487596d24728fa66996cf03f83eb28b41d4b572a49926",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "6353ec7924c4398842a6ea5f1be997d129089ebd1da634fa2afef57f06153485",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "ab3a02b9c54ec0567675549396f02903efb3cffb1b0bf0c7457ab6da7eec89ac",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "c2915dd0fb8682142f6ed790e9918643e340f3ce63a7e3e0e337ea3a2a946488",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-headers.zip",
        sha256 = "43478dba549cbd829af14d01ec5df04e82a747d33af9bc56db7b9d23c5c634ab",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.1.1/ntcore-cpp-2023.1.1-sources.zip",
        sha256 = "5a18f781f338d3b98960c806463b4f5de639a5fb900df7c5f6b004557c702028",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxathena.zip",
        sha256 = "baa93352a8c050f6e7a6dcf0399c6bdcff8242b5c813793392e478af22ab057b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "4c257e609a41f8f97d949c95dae338f72f3160f8b48383e53234d9de49e78e1f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "4fac6c3217a0ba5c48b4888ef7a449532294e104b0b037536145aeb48683a86a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "44b41a506b038c1ae84290c161aa14c7f67a31f317d8bb5d50dc13aefd410f1f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "be80a6c8aa37637b44d861be08fe64efe3f06d8e202c5de09a1397fec647d302",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "edeed8aba7d6b065f5af22a945c5e2e110a71cb90adfe10a193bfa6929379028",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "2705ee3edf5d4e3b6cc10710ae77a3f604529a7380d5453a316c4345f1f50b7c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "f3d6ee17bdecb5d099ee11fe6b624b7b9d529ade8da30772482a3f63beff3582",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "7c0615d18ccaba8a34b9ac50f7ce6e1bd7c0318cccaf95217ea82d860acf298c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "a212a1e3134f2655cbce9756c0732d237f97085b47bf1d436bf4ef6676331eea",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "3e24ad0ac8dd40e24a705d954275fddbb64da5816f2375bc4073bddb323be4aa",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "821fb0beb5029b7b04c5dbb1cd484a3b4d2779072134e1f624a91cfbb695a0c9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-headers.zip",
        sha256 = "0910593e36ba638c6d061b8be0144ff15c0b9c3bc3f8678f5b987cf69782d9e7",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.1.1/wpimath-cpp-2023.1.1-sources.zip",
        sha256 = "1f53a70ea82ad28313f384f39bef0a78a62e1393458577ce26c6edb66c11ec75",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxathena.zip",
        sha256 = "7bdf55970d8f95ab2ccf3c945291507183d500777e43ac9b6e72b06de7f773a8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "29d9d9ba2d676a32dec86860ec511119cce9e63131ea4aded90ce473920f7d21",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "3a6a6d0408761e012df2592a4e735c96da6a323c971be9e844fea449b0ab7d8c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "a2a9a82dc38a03555c0478c8689addacb6476c1ea099a6cc123ac06d4c8531b7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "3d7bb1b603f530e0a67b5e09a34bc5114fbaee50dce62be3701c1e24c1cb7618",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "81cf2d8156a458f1f18db88a5235431fa9b77d5fd23ed586d9002f26661a5a67",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "0b7edbdea262429511601e1f80da0f0a1a629e4c2f3c7beb37e15c767637e241",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "f68723e771ca959cbf662b924efca1e9f55b8b9dd96fd3783e20848be35073a9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "adc462b614307f23ceeae6eb2f3bf937c465774e7b77688412a5220025cd873b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "965dbbf887c683acaab196f2443ac7b688a41237efc4c76cdb655380b6212cee",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "9970ae75ee83d215542b303bb03d2c4fda68ba95b045e22e6f8662539bb23aa5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "5b499109b3fbf09ee7947bfc23d2b3533e39175f19aa5e608d3b62a301499ff4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-headers.zip",
        sha256 = "330489f16999cd403fd0d62c3aa89999398fe83fb4f4dbe8ba0530d63852dbcf",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.1.1/cameraserver-cpp-2023.1.1-sources.zip",
        sha256 = "894810206f477f27b59067e2fda4c6b11d526ecf3802d00bcd53602d90c294db",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxathena.zip",
        sha256 = "7453adade9eb5c7003c3e4b051cd4d6c30dffe812e5086d7d6e46673bc25de6e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "785f64f6ee9cfb77461d51b32c8a67389f48a1501ef90d70fd69d38d0428c59d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "4bc2fa75dd7ba523ea73c518e7564e3d1c62a785f43bdfd72054eda12c3cca0c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "f787679d834565a635c0230600deb8d91ea6e1cf04def3707d35fb4aa6b745bf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "743b2fb2ea84b1111a4554b621d71df2c84c034fc50a05d90f335c466c051ad3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "2d5824ae9def0e568053b2c0285a343013723e28d97a5b65e654cc95d00d1973",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "54188d404b0739c9069ed3e78aa18455f0f4e39f8cbd5e0fe514ac27f111c507",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "6c5ec2c9d0673d1b102806a8a9355c03dc43b30b2060bed0fb1713ce508fdef7",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "3aaad09c18ed65aba91b002aa700a3a4a33951e7a1f4b412c8f32757c01544bd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "83effbae7ffa19402bb3999a32ccdea3bf119f83adc6e7dfcd7852729b726911",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "6b89c9c1fb046c655bea86a23df9f68d2d88a08c5264cf7e0238aaf88a70f135",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "599ace03365c0f1cff1c807eecd43656ea4abb8c4cf17f8a9dc7e5d93d8f986d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-headers.zip",
        sha256 = "6fb4858d4e7a4813177f69ee6ca2e6784c2778d8c570aa6b8c752728ebebbc44",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.1.1/cscore-cpp-2023.1.1-sources.zip",
        sha256 = "76d3b0eccd469aadcd57bedc0c7739520e4c34314823170ff47b0ba863491c40",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxathena.zip",
        sha256 = "1f73e5e69be07f0d4aa2a85acf57de30cb940ecd10464e1883573436606a4ee0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxathenastatic.zip",
        sha256 = "97f887a7ed2ab65c67ff02b860c99d3f2419554376a57b65c79f684140b8f294",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxarm32.zip",
        sha256 = "f95caed48f39cd8aa22a27a127c9b197808ae6a376be21e7c1df3520acbd34fa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxarm64.zip",
        sha256 = "cfa5b8d5e272bc6e15a9e185f92a00006ae0130e5e14093052abf0d35b63e68a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxx86-64.zip",
        sha256 = "edcbfeb5464e308b0d03e6340d62bf74d3cd1d76b20807c0a60eeae77aa99272",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-osxuniversal.zip",
        sha256 = "d1438c3834f86a34e33e91ff5933279f525fd7c54ab16cba3cfb690f84990c02",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-windowsx86-64.zip",
        sha256 = "081f5e4656108af93eb43f5bf695996d965dda3fd709add53dfadf2001fb2aa1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxarm32static.zip",
        sha256 = "a9ee302cae7ae935aeed9aa4191132ff71af271421631a5407e4ccc113401ab5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxarm64static.zip",
        sha256 = "05371c77fc3caded4529b2e8a49d63de5ccd2a7da0ff37b74ec00187b693aba5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-linuxx86-64static.zip",
        sha256 = "fb23903fae3ead4bd2e173907f83e1df547b250c6b8bdf05d1a025e585b00cb2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-osxuniversalstatic.zip",
        sha256 = "ff21705373b970ee747d3f2522de15be2fe1bc1447bc6c731f645700ef1e519d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-windowsx86-64static.zip",
        sha256 = "cf5ce6816b087191548ef832dd8a6e2811412276c4c7feff184e160d8755d004",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-headers.zip",
        sha256 = "9e1810a33c6dc9d1d5e20a04701e6ac479ae80d2fe066cf591b592a25849e335",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.1.1/wpilibNewCommands-cpp-2023.1.1-sources.zip",
        sha256 = "da650c9ccc39529e771fdb8ef15675394ad74269d9b618644ea107cb8b65b337",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.1.1/halsim_ds_socket-2023.1.1-linuxarm32.zip",
        sha256 = "80e45ce32689740d45b326c14e0a8d5b7c9c1c698b0c56b4c47fbe433ef5d33b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.1.1/halsim_ds_socket-2023.1.1-linuxarm64.zip",
        sha256 = "e75135e7c9efd83a2ae5da1c9555eb6059932f7a7e68d21721aee86d51ace4aa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.1.1/halsim_ds_socket-2023.1.1-linuxx86-64.zip",
        sha256 = "8aaedae887da32174acc714f6144f6d91a5b14bea29f5a37a66e1aeed82044d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.1.1/halsim_ds_socket-2023.1.1-osxuniversal.zip",
        sha256 = "256d087c0499bc645e817f48b240b2e692afe6e1ffbe54622643ccfdaeb0b95a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.1.1/halsim_ds_socket-2023.1.1-windowsx86-64.zip",
        sha256 = "2a8846642c42d086d406dbe6a05fe9ed8afaa55609675b08205da2241f83548b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.1.1/halsim_gui-2023.1.1-linuxarm32.zip",
        sha256 = "d53f3952d20f9d6c9eadfc5a091b749c4aebe95e8df48ddec58a1588ba8dd4b8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.1.1/halsim_gui-2023.1.1-linuxarm64.zip",
        sha256 = "809bfce61ae070169da4da03f1c0142b94ddcf0e9559107c7ae8660295d65b48",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.1.1/halsim_gui-2023.1.1-linuxx86-64.zip",
        sha256 = "f8035f404647f42e49550530aecfd244341ccc4c7352ad26e3e3cfb0c9616179",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.1.1/halsim_gui-2023.1.1-osxuniversal.zip",
        sha256 = "c41eb8f0c6c56b28f780473a473f5c4b50268b5644aaacd7bae2c7011f29e0c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.1.1/halsim_gui-2023.1.1-windowsx86-64.zip",
        sha256 = "1ae591f9f999cff328f9805ae61690144ea61a589b208ed002b0ec3376009615",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.1.1/halsim_ws_client-2023.1.1-linuxarm32.zip",
        sha256 = "9aba0de71064d558f54abb9f4080d04aec9985b3b5c91b9a52393d4036b0c2c6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.1.1/halsim_ws_client-2023.1.1-linuxarm64.zip",
        sha256 = "89bd3a9143b27c29204c01727d1907e5664d413970746db0303b81973638f582",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.1.1/halsim_ws_client-2023.1.1-linuxx86-64.zip",
        sha256 = "34ad282a5f1ff0e71207297e06161aa326b1304a2bda738da2ba95555ed9f4d9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.1.1/halsim_ws_client-2023.1.1-osxuniversal.zip",
        sha256 = "845be21c91ed55b13e819a2e50948c2e1b4a492413e637876be32fd6a5e74df8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.1.1/halsim_ws_client-2023.1.1-windowsx86-64.zip",
        sha256 = "6b581dcc7c4c976eec76a720e542f3db192e29205ff231517fa1b165445a262f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.1.1/halsim_ws_server-2023.1.1-linuxarm32.zip",
        sha256 = "d7de197df623c625ff090562088941b69ff106bcb6ad9e083d159a6597813abb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.1.1/halsim_ws_server-2023.1.1-linuxarm64.zip",
        sha256 = "56b31d37a9ee5b2b9a6fb7cb6fef81f56581b3653f0c9d66e1352ee791e21e9e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.1.1/halsim_ws_server-2023.1.1-linuxx86-64.zip",
        sha256 = "950277866b2052994131a7f611c04417b2aa13d80e52398e5a72cdbcf13956c8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.1.1/halsim_ws_server-2023.1.1-osxuniversal.zip",
        sha256 = "59278f9b620943af85bc4e6481897578dfcd27062e0d25834944b86ebffa0609",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.1.1/halsim_ws_server-2023.1.1-windowsx86-64.zip",
        sha256 = "1a9822d5b2a00402686859f86ed4ef7ba15569e15a0aa55cb4922e09aedde969",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2023.1.1",
        artifact_sha256 = "bd9b91edf7a01b33bad0dad90e38fe414cd88cbe6693837687058472a9b31d70",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2023.1.1",
        artifact_sha256 = "6f934cdd7d9f03c6181ffe09a0d4bbbafa400f64bf521209d883c74a291fd8d7",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2023.1.1",
        artifact_sha256 = "5323148bed6e1114697ea1012d8ca79e6fa0a2f566951da7ac865e07868464ea",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2023.1.1",
        artifact_sha256 = "b172d6877fcfc1eac6cf078c7d7654d9dc548aed0d03d7cd7672a0d2e5419294",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpinet_wpinet-java",
        artifact = "edu.wpi.first.wpinet:wpinet-java:2023.1.1",
        artifact_sha256 = "808e57015ccd30a551e2c1ab1fe1a01749f7fa1c3e64398a8675f90748a53b54",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2023.1.1",
        artifact_sha256 = "cc3eb70c6eb4e05c777655021bae73724316afbd589eb15e0f35c26f130fba0e",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2023.1.1",
        artifact_sha256 = "465bbbadd1cd510454b580a25f80ef01e9bb0fb098241d99740977fb1cf90bb0",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2023.1.1",
        artifact_sha256 = "a2347b70395b19d156b5ade2676ad9faed6fb3bf1ca08970600ce8ca37cf693a",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2023.1.1",
        artifact_sha256 = "c093f1b46ca9f22aca1a2659d706712514e306db9aeb2eda9c0eb7f986814d02",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2023.1.1",
        artifact_sha256 = "2d6a1c9f4b4efefb6330368a8ba35ba6a3d51b9e3cc1d109e6ba7964179f14c6",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.1.1/SmartDashboard-2023.1.1-linuxx64.jar",
        sha256 = "31049852abd7c05ce03e5c1e2b7b2b64fdbe3ea049b2c3b68e656e0cab2f9407",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.1.1/SmartDashboard-2023.1.1-macx64.jar",
        sha256 = "c2ae3d6055bcbb0305ee72cc4d961f4198bd097c3a639c8383dbe08dda7acc11",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.1.1/SmartDashboard-2023.1.1-winx64.jar",
        sha256 = "714ddacd7dae737321131f53b64d73b064dc46127185e829e14f74fee5c525c7",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.1.1/PathWeaver-2023.1.1-linuxx64.jar",
        sha256 = "2b2b713c4f631841d16a8752f4b4f5e644844ec651b813709655bd872df7658d",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.1.1/PathWeaver-2023.1.1-macx64.jar",
        sha256 = "1dec045da16f2046e99d229c61d346bd72238c200ccfb99dc9f1dabbd4dfbd4b",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.1.1/PathWeaver-2023.1.1-winx64.jar",
        sha256 = "8c6e6726ecc5f41deb4b4dbced13d8e166c8ccfd7b1ac7b817f7dc0969c1fda6",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2023.1.1/RobotBuilder-2023.1.1.jar",
        sha256 = "c3709ecab75ae7e4bddfb0c4c3400598732f582e3f67f5940670be1c09d94ceb",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.1.1/Shuffleboard-2023.1.1-linuxx64.jar",
        sha256 = "c9c6b6acccdde806f0e4b3445b5422ff9c771705f974d8e3811bef559b4dd9bb",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.1.1/Shuffleboard-2023.1.1-macx64.jar",
        sha256 = "8514fe3115ad50a351e49acd7e3d766cd17a586bf7d6821ef48f95bb0a7df98e",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.1.1/Shuffleboard-2023.1.1-winx64.jar",
        sha256 = "07c5dec55797de68a3e03659e2e369cb8c15ec16011e9db42e90ad7b3a489dbc",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.1.1/Glass-2023.1.1-linuxarm32.zip",
        sha256 = "0926d67274c7723df28448a348d4a6478bd699a8c67bcaa984d03b5fb9ba7650",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.1.1/Glass-2023.1.1-linuxarm64.zip",
        sha256 = "4f4fe38a7a4ea2d9c026e9f42c0076e2b4d3953d5410aac4b2298f50bd4cd212",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.1.1/Glass-2023.1.1-linuxx86-64.zip",
        sha256 = "537e027372ab159f727d48a95e0375a8c5f76f4a963ce3280a7fbb4f96828882",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.1.1/Glass-2023.1.1-osxuniversal.zip",
        sha256 = "465ddb455bf25a85e34bdd28fdb0ce760262a34ad4117b58d957c0b4d99f3286",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.1.1/Glass-2023.1.1-windowsx86-64.zip",
        sha256 = "e96530e1f4c6fb9134443031108ea3e919c40150d7374edb6c51070be768c0a8",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.1.1/OutlineViewer-2023.1.1-linuxarm32.zip",
        sha256 = "104e026c28fbdaff749b9650cfb2bb019ca52b8d668d5dffbe764b6fe392a517",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.1.1/OutlineViewer-2023.1.1-linuxarm64.zip",
        sha256 = "0678c0b3aa583fb070701c8f8ebbf947f40723c3b9bc2a6e5a209a618cab4ddc",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.1.1/OutlineViewer-2023.1.1-linuxx86-64.zip",
        sha256 = "fbb7fa89062f2ed46267fc30f76560838c796e1d9f81ae6ba93f5257b4a01a72",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.1.1/OutlineViewer-2023.1.1-osxuniversal.zip",
        sha256 = "2fa8953e5aca5c024c5cfbe9cf9428fa57103b022d8611e933989561e0b3aa81",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.1.1/OutlineViewer-2023.1.1-windowsx86-64.zip",
        sha256 = "1e2047e486e805037d9b0ae59b8908e792ba1b3a6f0e6d7f92f4ac63a06d0f6d",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.1.1/SysId-2023.1.1-linuxx86-64.zip",
        sha256 = "7a31114bfc8579e72fe3ed717bcb36ba88a82b6556b223a8c76ae6ce365542e1",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.1.1/SysId-2023.1.1-osxuniversal.zip",
        sha256 = "53d4cd269687369a0b258efa372aa12167c61bc8600f0c708e90322483e51281",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.1.1/SysId-2023.1.1-windowsx86-64.zip",
        sha256 = "8622ca4431436d98288079cea5917842e1b2f6a6e96d4716573256d329e7aa5f",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
