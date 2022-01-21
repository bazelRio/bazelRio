load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2022_2_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-linuxathena.zip",
        sha256 = "9330e18b3d6e6c42fc0a09b70e3bae3433262f21b5bb0a7546d2cef2bf64ed8d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "07b70552348f8244c3471fea2f3baf4b0e6eb5cedf3a47f8dcd857f3dc4f5b8f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "a8a5260f437f7fe289e7325e1e809c8c1ae980b42c1cd041f4ceea5c658ec79a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "3b2435e7f04c0c62953bd4bb12ac29f34490771805052f9f0b5785ceb978af59",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "b8a5877128419193252d619971f89ecec5ed69ab1c4d44df1f07b7ac2ec86ebf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "f0fdef322f9b8114ece64c8c6754e40c09462ed66b21ca4c49bbb88fde03d2f5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "1e10a2da051dc71de351c197202343eafec3827ee562168e1210c6c072ef67b8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "7b5a2c903e9252f9678e1e60145520073742586f50ddd27907044a1279785830",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-headers.zip",
        sha256 = "6a4d301cae095f99e5433eaf36a0a9dd0fd62e2db198e703cbef62afc82f57ff",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.2.1/wpilibc-cpp-2022.2.1-sources.zip",
        sha256 = "4086f8eba7d0e08e32e3e94297ffc7051d13a81aae9cdeeac9cc12995d7b1077",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-linuxathena.zip",
        sha256 = "a85859831ff2e5ee142ab5566c033897c4b4436118c83638a1fb6bb4a99b75df",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "bba23ac341fd04fd0c52aafa615ed29c03ed1184b5ba920ca32ae79a78956529",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "a4e7a2ff52155481f6715e863c86d5c34c7f1325d7d5ef89ab46e0a1cf81c1c5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "92546ba874045a531ee2efdda17bd0a41e2d0bdd8496c4dc73c90ba22cdda62b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "4f2bc2f971cf4d39ddee4bb9e72b492d28a149af4991963616dcdee33ddd3618",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "f12611ab0635f1272c907625579d2644cf1c5abf871d439419415eca4d43e097",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "87cadde2089faf3487fa791caf49d85e1245b1f83b7b7ace288b6b712b6b751c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "088c7bf9d65b88186f49726dad512f8ad33bc5fc11ac79e437aab978aba53761",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-headers.zip",
        sha256 = "35fe886ba146b22563b74fc068ae4670ac47fa5efb4cc184e649da68df768dbf",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.2.1/hal-cpp-2022.2.1-sources.zip",
        sha256 = "3dd458bc6f45bd4f8a69a5325add38b218cd5663da7e8be35ec2308fe884a1db",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-linuxathena.zip",
        sha256 = "18bfd31a2b0c15b9069c43b6785e5970924624143ed4e0f8c0f5f4f5ef35a0e6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "ebb76928b4b64583c01b7f8423aa520449aded283909fbdf23280cc713e676c3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "8d53e5d28bf74c5b08236966477da559729939e15ec29c902fb9f2b39a02be02",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "dd28e82bfefc73e2ae94429f36b28d0a43769825a0c78485f9666dd898102a5c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "6fdf230dd51d1cb2beaa17318852dd93776f1a5bb534cb0a9c2deb61f753450a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "db7d124f956ccdae31a0d3b4d01b542ef18a4b6e4654f86e759aecc14d5f85b6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "59add826f2ad92d4e626acf8efc475d8c0777bcb3fabab4e3409da184dbfb333",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "117c4b3760bcee2ca2bfb3eb847c0c80d9bdbb472159a46994a82fc434d9e04f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-headers.zip",
        sha256 = "0ffee0c321cdb2834c1baa27d8cf14ea524bf36b2b19f4e89eb0d6623851e7ac",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.2.1/wpiutil-cpp-2022.2.1-sources.zip",
        sha256 = "7fae188ef68619d2ac74d16b43b5f5efc9043018100e9c2ace21bb7628db8ade",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-linuxathena.zip",
        sha256 = "0491f268b41fa6d700b1fda91625f7451a11558c8988891f1632fe5723b9dbd7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "234cfc223ba0ddee9f3cac92dd85d4769bc6749c5197f2514da20029c9e444d4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "6b5b34e7cc2780259480483e0df67c248fc4211e64d54af10158cc0ee1f0d004",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "0cda1a97471d35ef8acb31ad23b0bbf9318f103bec3bfe3f297b490a00cda5ef",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "c567e37de0564f27bf806b6acc7fabf4fa46ae393fdb8265a5a3524d3865f4a4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "e05c43b889dc27a53291a49d56034e6c20234136e6136205ea90e781e33b5013",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "f64000b9407de9c75194fc35afb9f67d91ba15be774da6bcfcc9d25128a9b483",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "8f5a79a50e779815bab693bc764b1f92f2d8128fa1fcd07d172214bf29f5aa92",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-headers.zip",
        sha256 = "d85bd639b33522ffd21b8580c81adb540d5291ca48d9921f3ef1fc27be140b3a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.2.1/ntcore-cpp-2022.2.1-sources.zip",
        sha256 = "70c63b39f8f07bf87de09e2955d959a1462e5b99c7ca7b272bcb458e02b4423d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-linuxathena.zip",
        sha256 = "53435ac49ab77e251412c9edf85d3fb50da19e713f21558a557eb413a0553de2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "ad3427d87b06654305327e8b14b82d311c55c743d6a055929dd0b4a8b4672889",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "838a08de6047dd7a8cfadb988a458124d58d7254527d4cb9c0e8031a1b4b243d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "a3e092161bb2ee6002cdb7a49d7b3ab0099eb83e2769c359f36a775e76e7c773",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "4452c012b4d7f55f355b7fab7fdc93c9af948082236296e4eeccfe7816f214cd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "462b77115751c072c663b934c4412493a80c247b2546cabb27ebf92ad5d2bb6f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "7928f74d57b492db23121b52739ea233f5bafe259d10cb34105d4d54c0e3b91c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "47967c75dd96c3d3df83987e6b63cefb9772e773d828c5ab51529ab448ae140d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-headers.zip",
        sha256 = "f5a1f6b3d66977316b4eee3ebf2ad42a8516b5a64857fd0514202ca08af62dcb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.2.1/wpimath-cpp-2022.2.1-sources.zip",
        sha256 = "63a83f17b343d939598a1bfe93b28d8c933a3bf515a5bdfbbd9f7db8a5af257f",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-linuxathena.zip",
        sha256 = "0fb64d2c1ff752d3ac4a1b63a7b5ad43c9aab5b44eb53718872d8a53322334f8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "26599cdcf2a7d23977612fa410e6c20254f81554fef6517d74db40b10d56d37b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "7e8b6f09dc4097ef9e0be42d54bc9c2eac50ecf30c28cf3673e0e6499b65bc57",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "881bfc3b15bd96554f56a8fd8888538c4f1af4bd9f12ea2453f3199958fdf65f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "eac981f7023fe9d4ad9ba924832627d641f1dc9f56d72d6584ad38a74ba6d8e3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "ac34cd177d197f2cf95f81cb2f263deb027f371b53c7aa173f47bdf2c82fd8d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "03b00dae2e96150b04fc9248b73eb1be6e2a2c014685671c2bb03ae18ed4cf06",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "a0e7c84e5b56dc01680fe176d00ffb08815584a031e5ae08302a0d71051b2097",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-headers.zip",
        sha256 = "c945a78f9a4a687f43b7ff8f838ffa49748943fbc830ad244cb3caa17afb1f05",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.2.1/cameraserver-cpp-2022.2.1-sources.zip",
        sha256 = "c79135a50d4cf005d55d2bee2f4875053fdabe2b03e3d3a733d0353c4cfda11c",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-linuxathena.zip",
        sha256 = "cc82b569401a60f18d015a1f21d278bcb5e281582efb42a543c784214fc905f0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "aad660f1cb500a2dd1715ab39d7e669c141cef8826e8569a7472763c964274cd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "25c4ffd8cd0e43f79969ddcd3c7613119e275555539dd5dfd43375f29e779e23",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "4837f3714428eb2e074edcb2119a5db272fbf5e9f6fb9d335d1c89101788aa9f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "e2a31a77f39145c766465ae1ba7360cacbd44fcafa8a5c335692792191549612",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "0d86025b6becb55425b95ff9aee694f63c39399b582377a20569ffae9a7fe8cc",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "55640d3939a2cca6b067ebfada5c7f4a1c5fb48264292ebe3e43c0f370495d27",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "66d4c7c0d6d6398bd51f6735244685c60235f2f95c2edcd79da1589145e7f27a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-headers.zip",
        sha256 = "cf0917928ed0125f97eb879f19ec45b9f5b89a0219a4fb71709dffa3e00d9a0d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.2.1/cscore-cpp-2022.2.1-sources.zip",
        sha256 = "6bc1bbafa8d663c71cd0fda6b96701d324c2a93e373a35c3367d4ce4197b4898",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-linuxathena.zip",
        sha256 = "f439cc2401f9f40172d54e9a5541c5931f3bd4e7ed4e97abfef12e49f69f7992",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "9ba2523d65178a8083323931da24c15f39907710677066d82a5b877f83813c82",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "c262c298beb43417acc776a1f74b5d0d91ea2cc5a11cc30a1734309101a36385",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "fa6b920f62dba157c7fddfa33c245c80c475141249e32f70c91026777227bba5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "b6f5b80e27b30d6ce3d3a022cf259ac5df1356c2dfe25756b124db4cc09a321e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "7435e608ebc799bef9cf0eb7a0d41c8a5645f12e387b05b869e560c482f2f80a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "2a40d2d6d890a61090e5574a224f5987073767571bf3974295a5249c6b72aca5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "ce920b74a48287a4d4e0e95c4ba55132447a3737709699139e8c9bf26d4f8720",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-headers.zip",
        sha256 = "72afe1738802af4db82eb20235edb21611ba7e1fb30b0d9fcd75c311aec16834",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.2.1/wpilibOldCommands-cpp-2022.2.1-sources.zip",
        sha256 = "ac5999d1746c7c607e4ee767a61114d211f9b0dccdcafeb3b00534f725d940c4",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-linuxathena.zip",
        sha256 = "b39125d5038ffb64da8992f313f6cf9ed941dd7aa0c3c193264806e688732d90",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-linuxathenastatic.zip",
        sha256 = "ea578f7847b0a320a8ee39ae33a440b9e39cdf3fde283c3dff899a9a65eda3f2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-windowsx86-64.zip",
        sha256 = "217a1a1344e6a67ec903676bd61d76a576b9587fe9052776462264b98d902c5c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-linuxx86-64.zip",
        sha256 = "6ba12eca026d18364c87e6326be6b3255cf8ab0129317fac67a17be177714d76",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-osxx86-64.zip",
        sha256 = "9d58e0f1129522a7ffcd54c05f51ba83907afa20c7ffa10f5d694672d9177446",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-windowsx86-64static.zip",
        sha256 = "130e37791d82e9227ac00536ff14417c3c3255b3759ea4366d0a28c8892e84ee",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-linuxx86-64static.zip",
        sha256 = "a8854c2cc5498ebc25908694a02e4ff17ca56fad49f7d486fdaf7f452986e103",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-osxx86-64static.zip",
        sha256 = "75c73d927d61badd888435b1a6994ff9bf7f93c134f792b5468e4341e7c81e3e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-headers.zip",
        sha256 = "a30e86a79c3cd7694947fd0a79f9be3a1d82139f66fbfaacc13e99893fbcd26b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.2.1/wpilibNewCommands-cpp-2022.2.1-sources.zip",
        sha256 = "a530db62ea03318e904aa6dc58ef025e7ea960dda4d65ecc0b0b8f0e36b15de7",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.2.1/halsim_ds_socket-2022.2.1-windowsx86-64.zip",
        sha256 = "8f059bec35190e8efd9bae476cd3edd41be6da759b11545b61bfadcfab35bd0c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.2.1/halsim_ds_socket-2022.2.1-linuxx86-64.zip",
        sha256 = "bf347375f27d195bd8ee27f88c6e77eeb9d01ecde129a2e0542339f028f38e6f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.2.1/halsim_ds_socket-2022.2.1-osxx86-64.zip",
        sha256 = "1fe9d2766de843371e50bb2f0e2656c97e89e9fdc21099b013110690a55b3c9c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.2.1/halsim_gui-2022.2.1-windowsx86-64.zip",
        sha256 = "3d842bc1d969e0897231dcb580eabec038cca7732b31658c2e882296673609be",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.2.1/halsim_gui-2022.2.1-linuxx86-64.zip",
        sha256 = "c6240894b161ac7fd9b37e4b7f33b4602bdead54f69f5393cb0328847e065495",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.2.1/halsim_gui-2022.2.1-osxx86-64.zip",
        sha256 = "3e06967bcd2a85d8a403123ad3b9d103c4129bca68c834d5abf6e73268a6e198",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.2.1/halsim_ws_client-2022.2.1-windowsx86-64.zip",
        sha256 = "74d6a6e92b2fe9d552301f1b764814beaa961243333a5a2bc44de69bffa273ae",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.2.1/halsim_ws_client-2022.2.1-linuxx86-64.zip",
        sha256 = "a9b6fcc98d0ac6bcd8962f24a93bffae7513cbba601e90b332d734469f3dd1b7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.2.1/halsim_ws_client-2022.2.1-osxx86-64.zip",
        sha256 = "c7e8807f38f2d8609ee0d4bbf61e75067879f4ca31de7cc63493099f227bbaa9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.2.1/halsim_ws_server-2022.2.1-windowsx86-64.zip",
        sha256 = "0979c767eda89833284a0ce5bc8f73eee9266cc18f8c6383fa27f69ac1d9e83f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.2.1/halsim_ws_server-2022.2.1-linuxx86-64.zip",
        sha256 = "3034fdcbad441a69e58ae65044c05f91082dae3eacd495332892858501cc2c48",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.2.1/halsim_ws_server-2022.2.1-osxx86-64.zip",
        sha256 = "4131ce566cb3eb92c305a4e7655606554a1f1d8e66304a29398f51fd670df300",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2022.2.1",
        artifact_sha256 = "149a2c692780487d6da69e64c5f64aa521dd7de2a83a8367f9e3d9d92c5106e5",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2022.2.1",
        artifact_sha256 = "9cd5c8a9673bd4832407e9ea8f58a0f8c84eeef0f1c77bb42cc776da65ed8eb7",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2022.2.1",
        artifact_sha256 = "29b2760851d73aadaedb4d36653578f4801573f83e907851f4872fe8e57f01b9",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2022.2.1",
        artifact_sha256 = "acc9067365bc2a4e798372486fc7484149af2976deb19d423717a9cfc6203d65",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2022.2.1",
        artifact_sha256 = "29e19d210845234126e1df2d99fde604c0ec64a28b297b3e31cc1f23f63f7647",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2022.2.1",
        artifact_sha256 = "efff187c5892995aa7f66d84a33564a51da0824455af5b140a5ef7743d7e060d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2022.2.1",
        artifact_sha256 = "cb36eccc6718a3b3abe687606bfdf968b912f1ead5f70f1c5d3aae5b66f495ec",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2022.2.1",
        artifact_sha256 = "848aa932cdbdf46d785d90c39c536b9dc6ff4ee8db02358db85fe15f2163f18d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-java",
        artifact = "edu.wpi.first.wpilibOldCommands:wpilibOldCommands-java:2022.2.1",
        artifact_sha256 = "0f89c5a9cbd7a5190a1b6835bf8990d113423f8759b2472ac87196ab394d2941",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2022.2.1",
        artifact_sha256 = "fce9ff3033744e163e3c32f65d7ce30f727017c2ee3a7fec2e2930da8d9f762d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.2.1/SmartDashboard-2022.2.1-linux64.jar",
        sha256 = "5028c69da6acbdfd97f99d7c4dc21ae226818a48dcbfafdebf1d09033ab63b32",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.2.1/SmartDashboard-2022.2.1-mac64.jar",
        sha256 = "5ad7d72292cc774588d275330c55f7ead19845c1c6eb9a8d2b3311b696cf96af",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.2.1/SmartDashboard-2022.2.1-win64.jar",
        sha256 = "36c791ef4f9f7c899ea1937d29053e9a84b4369055107a9da0d7d0750107d382",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.2.1/PathWeaver-2022.2.1-linux64.jar",
        sha256 = "52897678ec0274a4fccfbf5a1295db4b6af255913a497a6f605d6bd1f228397d",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.2.1/PathWeaver-2022.2.1-mac64.jar",
        sha256 = "5b5bd452d0c59341b0083577beb270532735b69120f4ec2e1ecb04b366a7eb45",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.2.1/PathWeaver-2022.2.1-win64.jar",
        sha256 = "16f07fb4cfdabd817ae28b1cc02c1b82b5105364011d4c0cf5f9412d99123ecd",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2022.2.1/RobotBuilder-2022.2.1.jar",
        sha256 = "2b06c793a2f096e4a1f00c6ddd80d4130e5feaded64aa484bc80dd87774cd41f",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.2.1/shuffleboard-2022.2.1-linux64.jar",
        sha256 = "9c9712e00958c1a6166545546e34d6650e1d8c088b5a327de1172bfa95594f6a",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.2.1/shuffleboard-2022.2.1-mac64.jar",
        sha256 = "e14a6d444da5f73daba7f916b95c3b7fef9e5c5265befed87df7dcc8b7ac288f",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.2.1/shuffleboard-2022.2.1-win64.jar",
        sha256 = "3e8f8d8df4b25a1c65ee50811fc90a74b50fcc2d21e0c0489040ab62d928ab4f",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.2.1/Glass-2022.2.1-windowsx86-64.zip",
        sha256 = "5e6bc9ada4b4c4c544e27e37e37404ea8c092d6b8b70c27fdd186ebcb80622cb",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.2.1/Glass-2022.2.1-linuxx86-64.zip",
        sha256 = "e3776c49f5a5091ac2a7f44b79c7b53595e1664a039d604081e334bc06678592",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.2.1/Glass-2022.2.1-osxx86-64.zip",
        sha256 = "98ef851a9966331b86666e53c79c76d8cf1e03d00ccf89f3f2178cbbe6aa3456",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.2.1/OutlineViewer-2022.2.1-windowsx86-64.zip",
        sha256 = "8a2bbfd6bdb672d5831bbd95f6dca7687fbb0a958d69c97eca30b14ffa43c716",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.2.1/OutlineViewer-2022.2.1-linuxx86-64.zip",
        sha256 = "418e6feb01ee82d9bbfadaafd8e03586093469f94bb2a99fa49fc4f2425bfd3e",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.2.1/OutlineViewer-2022.2.1-osxx86-64.zip",
        sha256 = "0b98b99e960f72ae5df82d33039fd6ae17fc28361476e091f2be25c87e141718",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.2.1/SysId-2022.2.1-windowsx86-64.zip",
        sha256 = "b4d56a5ab6392d49b91fe2568212930e74647a2f181a87e80f1a70088e057fde",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.2.1/SysId-2022.2.1-linuxx86-64.zip",
        sha256 = "ef5b651ad9cd26d0ef247aa878352e0f9a4123d8fe450e3725c610ff0e89241c",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.2.1/SysId-2022.2.1-osxx86-64.zip",
        sha256 = "41c691970b7eab7d14a49cc16ae97b612137b7b9d62f201069ec5b3db230ce27",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
