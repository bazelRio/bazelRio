load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2022_1_1_beta_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "f0e13354897ddefebe552c156ba65c2b1d5c4286de5ea2ccfd4c0c62225128d4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "d9de9cecf888ceee59a949fb7ff275563ee1d36051b3df06e6a88c71f8fcc42b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "cd4578b9d3bf84d5702f862acdbd9a9e05cf54d3a2589807e2e8143aec2cde93",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "7a6c2ae60403fc57540aa3af74d41dbd31d03c5f5e58fc55250944884f2356b9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "73bdf7d3f26cd4b593cfb00f624668246cc73475a57136b26c8ed5abe30c3e35",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "47eec8da0bbd5e1421f02d78ff544d13e22e13d66f42895d2204bffb6704d555",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "db81ada48ff44775298eac9a39d6a4644cf7ce1b659adf04441506c901c3667d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "c41f58957708b305c36a69180e601b39f84dc75b8a29a178ad0ab247485e366f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "1d3dfd94310e829c59df00b7c7d9816b37799606414bf40e3530564604773a38",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2022.1.1-beta-2/wpilibc-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "48db17403c13f7e6e25d389bf7509f8fb90eab453cab35db42ebdbb8c3f5a65b",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "97bc9d45eb42c4e0046c63cd1106d0c04d243c16387210f8753bfc4f877c7c80",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "19830fdc7c7cfbcbbb87356b8665f1dfb78de9362814bae277e123cd6006e4c2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "8d3791a5a750553a7b502d1e8db22d93e2e2f4ab8ca1b5d37e1a8f7eb11c8abc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "ed408cc739b606226900246bc722ccaf6d3d9d6823fe10a88ec165e8c844d7ad",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "04b46dee32a55cecf5e0e4a2af9970f4ee059fb0afae4c4b33fa4e53ab1d9f89",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "5126cf98d7e80be50d1eda4e7c693c117c0313fe9e141c12739993d73a8b5630",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "d6a6a306d1c65f080b4efa5b1a15dd032243188fe1423af0a24f238b37f8cfe9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "3ecdcbef0c7ba9f6611b990ac1282de3b74f82531d5bb87cc1b1a17be170a940",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "8c7cb75a7dbbe85fd160379237f05eeaba481a953b24455bd34288e08c2135a3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2022.1.1-beta-2/hal-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "5c0576b9fe09f4b25df7c9dfa5335b4c1fcba7ff61bb92f0d861ec4334ed13c6",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "a5af8dfda0b4723a4bd77c4d96de9531452fba3c4ed8e7f850b0801880851aaf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "eaf47c60355377bfd5754920b790d3d65d08afed2f2da93d3c2f281e1c867f6c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "6bfd04ffa99473418716b31f7e8a61bd6a09c156896d88f6d56db697164dab68",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "09b38a6118d55874f665e9c3855cc09cba64c608196d2d2d34f370e1ebb0e4dd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "a635045164580665a7390d841de1f285b5910c72c387b4cf7a9ef8ac55d1db82",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "2bcb8762b93c3f11827a03086eaf09037451d801c3395a18c875d3022d2d66b4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "5fba49f81922019c25cbd0295f0e6c00b3a8c5fac23b3e056ecb7253ace258a9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "0da4ce06077b2e1a2d2fd674129c19a8851213a77c8c077b1b6493658a9e61e3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "f63c7086f6d900f6088f42b5d31d538c89df1c6d110f679508883fc0a69a48ee",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2022.1.1-beta-2/wpiutil-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "26cc4ec3b6846426548a8069bc8fb8047bd1a03450fe076b387adaa3b56d1a27",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "6fd6f700ae9d94d546c1f731d5823f22fbc8de05973383997beaccdc15dc9f3b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "06ce4bd18cb31d383c96b61855689f082ab82eabb2d4904d390241e7140667a4",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "99c44a1b6aaef37b03ff6f7c41c4ccb02f3c7ed9fd8bbdb04190b6ba86112d4d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "55f831750fc2f0e1168f6226d379ab8454244cdae584a021e7be2f6ade8c0907",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "e6bd27d7b1a145206a11e59518b3f19f82c73be2fc0d69404103bf46c761199a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "f1a202aa07f97f734c08759a17dff2119a73122e62258bd683fb5f8fedbbe58c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "648f6286db8bf8551440b866dba6a7dbd7613accd4e07ad14a79bc088cbb8ef9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "0d351c41eb50bec79e70ad209cfe00d818296285f92f0a0c3331226fd156c240",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "d91ee0e81421a4b40cd2983cda4b4bf430448413284ab5b088b2bab0de846ed1",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2022.1.1-beta-2/ntcore-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "68bda76f06efac28bc0858afdd063987d9adb7d502ace491cdce7a8867cac738",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "01570c2eef2fa6da664c7eef542f52ff41154339433d9c20c51fcf20ed06f8a0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "5dcd20d8164633e6fb6c883455df20d2837f385afb1193e52457abf10d0da484",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "14a6e0fd84a61154cf9831c62889e8a816d49149f45be8b785e0a95bae5c59da",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "54cb8d45bbdb3f1a6af5b638d666c6274d38bb31b1459eacfb009bfd83b0d4f5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "2ce70b9193cf92947e39b955918e3ef00d8f4c77b03d75b3069322ab841f8fa8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "f1d470b0632352f8371b1a0ce5f65e84da8e11118c65694d689d5ba7b1b90179",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "c24c4557175253487fa1fb5d99538ba8478e9256911872984d4e989da3a01630",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "1ec2922e338373244cfc89484d9d8e369615f370a3ee1de41c43240dd64819a3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "e08c8eaf576fd8f05c12af6fb9af6364c2d8484d689d17892d34f16b040fbba4",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2022.1.1-beta-2/wpimath-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "2d5d87ee83cbe6f699eaf3c3a00614a0532e06e0d9736af17023190a8aaee729",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "76d739ed2190285f4a3b977371f766f7640cce4c8e92435535dbf7c679004358",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "428f94e3c21dbeded4ace51da043abc88979bd5aee4571256360041a55e37318",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "b9c0e355e21d55339f1b488d2a076fe4a0f8c079222ecf098d8034822fb55f46",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "a7ace64e900deb41749f0c37d6ecc37d437d24a858887ac92c51eb8b7a164684",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "3646bfb7b8b665a6a3cc74f565d16200ae65afb8acbe4d7e107ba9a9af13df23",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "fbdfbffff2866829d71f1ad17b8acbfa76fec6fb13fbcc0bf406ed920a79d2af",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "a2c14e890978ba94fc1df261d7bd9ac4622ad9a481df97d559479ebfd2882714",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "59b08df64d74b2acdbc2be65ce208c8deb9a1b6bc75db368836f200cd9707f9c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "feababdd10581c2b517fed56e55c8df6d8a4f977ee1849f22247befeccce9a3a",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2022.1.1-beta-2/cameraserver-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "679ffd0da3701e0c75d99b88fcc552159179cc1c08853f9565671b0349316d2d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "5ea93a4970a10696a87cfb66287b3a6b21480ff460f83f67fa8088089bcfcae0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "039898fdf531d22289b1b65a3787345fafe1859c7f4e6f926bba7d5146578869",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "6ffea3ab8859c625760791243294807a9193a2e934fed7c4b8697dbc4f09eda7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "57c327380177a84fcca5788c099c3b425a6b37746c4fe18230d5a0d5c688b568",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "62af34633f43b20b31c612ed437eb721271f5f95f9a4e370af3e5017d965c55f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "f55702464cd0c51973fd95c5044bb36fb142f8b3a6b1e697f2c006ee1429716e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "91cfd7180d96168132b4472825fd3786d9f43589066bd49a881f3c18a4924fc3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "b847736263619d91132010b80002666f30f539ccf0353b0be037a9bde0324fa9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "9cba89aa01769a3e324602c1769e6d4a94604d3a5736b925aa1f639bc1423de2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2022.1.1-beta-2/cscore-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "d0a8bf9d6f31b86841d18191efa2fc4c5d48197f1420a9ba451d03e5595c0c3e",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "a16e2994b61f1793471083457b19d8067dfb65d9d1ab62efc3bcb7800166cb39",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "fa5548d979ecdcb4d74eaa16096857ce2432b84712193f2552dd161279dac0d0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "b19607d933659d57bb3c5d50a6d0dc6601a5a911d0cc122514a8f53188b7e66c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "20b018876798bf5eb01df876122a4f1eb8368ec71262bb1010d8f61cde4bfa74",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "dce98a73c9a3e5ea3fe12eff0b94de3693fdd125e0c652d12fb8e92b3a1821d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "975b3b6e3eda0d4d4c76d49ab0af4ffd506f48312916dcdaf3b64c75affbfe14",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "80cd322b99ace21617b36f379c9b90ced08e7a5948cf663535edb3ad0bdd49d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "12500d989f2ceaccfcff754e06b604825b9536c12257576d70379aedb6ce86a9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "772f0c036a188c39e3d9d120e893b2162b0215b7a71ecb8d1b3eb823a3ee1f07",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibOldCommands/wpilibOldCommands-cpp/2022.1.1-beta-2/wpilibOldCommands-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "320da177b7438845f28ebe12e44a2914ceed54fd7b09ea1ea1eb803cb4e5b4ae",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-linuxathena.zip",
        sha256 = "8b7a916a72210092d89e61f6242199df5fd74c40f7c063d286315ccb1804d3cc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-linuxathenastatic.zip",
        sha256 = "d362486f071309f5656898d15564d65e463ba6dfc0cf588f2864a3792f2be041",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "b0520c8f7ba188705b6237945cfc1eac8783fe65edadaf46b64a43baca6218ea",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "e7f0f3a8634f7f08f9ec8452731a2b75bd7e1d8d2cefb788774f57a468436b14",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "1d112f86c8836cdb0b5c400b315aa9c2e647f2dd384f66f9a9b903d9ed231be2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-windowsx86-64static.zip",
        sha256 = "b92c518c84cca74f75958194e77c35cb4c735c2bb56f0197da70a8407fa245de",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-linuxx86-64static.zip",
        sha256 = "b2d23092a4ada243cbcd2a6424abba4f9820618ac6682291be18eb91856c2ac2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-osxx86-64static.zip",
        sha256 = "27a02f4346788bed6e65b5c33353b57599722afcb28d139ce6fe98061c3e120c",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-headers.zip",
        sha256 = "b1c4ce4d637cf521be55e96c90f2166ffc462009074e6761d8b2ecd0612c0cb2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2022.1.1-beta-2/wpilibNewCommands-cpp-2022.1.1-beta-2-sources.zip",
        sha256 = "f66ba765b0522381bf96eda08bf6e101ee8cd18ae1ef84c330d529d151c37c3c",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1-beta-2/halsim_ds_socket-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "442e3046d5e64cd9c84c54dd081b3bf00bdc1a642098b49bf0f480f3330f49a9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1-beta-2/halsim_ds_socket-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "5a7748f8135512d111556bc359aa4b84951e268ca9d3efe0882c492d67bb1b93",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2022.1.1-beta-2/halsim_ds_socket-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "8458c5f016df2ab1211dbbdd36a156dc0433b80fa990215775d13feb49672ecd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1-beta-2/halsim_gui-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "04cb0dadcf6a1d6e6731148a9e3c4fc8599cf392cd163b4a6cc83dd206f2edb6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1-beta-2/halsim_gui-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "19fcbda099a731bd138b41ecf5c7788114b782558b404cbc8812c30632df2adb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2022.1.1-beta-2/halsim_gui-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "3df6a0446cc26f3735b21eacc641cc0714c35cfa9fc5c4dcdb6e361049f746a2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1-beta-2/halsim_ws_client-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "e885cc8e255d9e3d60cafd4309d64afe17ba521f85836bc6f52066d49b00c0af",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1-beta-2/halsim_ws_client-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "c6b4a9f385cc291bf93af3919f226204bca447e8633489e3b0d4dee4e4ae8fb4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2022.1.1-beta-2/halsim_ws_client-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "05958fdc8e58b3a8021cb2ab5dce56b5f6804f7e65a006f2144dce16f2ef6e62",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1-beta-2/halsim_ws_server-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "b15cd706934a474c3bd62281e77e405f1bc0d026728c6185be80491c68cd6646",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1-beta-2/halsim_ws_server-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "03b3281618a2a87f60cc88ad185eb455e3cf56787784add123d57dffd6131ab4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2022.1.1-beta-2/halsim_ws_server-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "5a0c0a6caddff7dbe4db0cc6987142fc1e4a4eca301813a489d8ce58cbf2b8dc",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2022.1.1-beta-2",
        artifact_sha256 = "52921b1b910fc3b93bf0543b68390be37d7b64a3619b33f700189b661bbd8aa0",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2022.1.1-beta-2",
        artifact_sha256 = "c63e5a2dcc15b1ee4a94b9d4ca547a1a9b9f6d4a0c3844184d5da200deb4f43d",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2022.1.1-beta-2",
        artifact_sha256 = "0cd17dc3d5a0716739938aee7ac37568e1b28aab0efdb649ca9f44295ddc5455",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2022.1.1-beta-2",
        artifact_sha256 = "0c566e2773c23d8b3b7f11c7402103426ab9591b32a95d721a37b4ef8acad3e2",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2022.1.1-beta-2",
        artifact_sha256 = "7c12c9ee121929566e219a95c2cc690d2c6ea5e386114f331b8de994637f3d1c",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2022.1.1-beta-2",
        artifact_sha256 = "6800a86e863cf7a748810c4f1a57df69bf1b97620a8f20b1bc6798667e1f9d53",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2022.1.1-beta-2",
        artifact_sha256 = "501c26a37dc4727be53e7debdc7ef179ebc7f55b2de16cf6d5986245c0baf397",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2022.1.1-beta-2",
        artifact_sha256 = "fe48615fc8b9d8213665d6aaf35163542f735f8a7501acccaa6194c45c84f8fa",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiliboldcommands_wpiliboldcommands-java",
        artifact = "edu.wpi.first.wpilibOldCommands:wpilibOldCommands-java:2022.1.1-beta-2",
        artifact_sha256 = "5fef601c49c2ec3b8ce7d14e29ef9e39ec0628a3817a5ec4b3fdd90fd67068d3",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2022.1.1-beta-2",
        artifact_sha256 = "ffb1ac8cc04be8d26687d67846be13b8b7d36d1be3ea052e50401654d203f2a4",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1-beta-2/SmartDashboard-2022.1.1-beta-2-linux64.jar",
        sha256 = "cca1519980bca86cf7541bc136919678a631c7a90748517292846bee8a068b07",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1-beta-2/SmartDashboard-2022.1.1-beta-2-mac64.jar",
        sha256 = "4697aa2f25c38727dd98ccdd9ae09bc56cb194170c9691b2b131964687815f4b",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2022.1.1-beta-2/SmartDashboard-2022.1.1-beta-2-win64.jar",
        sha256 = "422d4050cefaa2e0b5d674c229e0ed30a7e82673432dd91d207bb0b53f1c3e70",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1-beta-2/PathWeaver-2022.1.1-beta-2-linux64.jar",
        sha256 = "34a53aa721a2863897f9e313a0be21f854a1535e5a2e5aabe76306753e89cd60",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1-beta-2/PathWeaver-2022.1.1-beta-2-mac64.jar",
        sha256 = "f8f211793952077adaafe0fa37551fd95e0e530842b23ce7f298777c27060052",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2022.1.1-beta-2/PathWeaver-2022.1.1-beta-2-win64.jar",
        sha256 = "8e8cb1dcfb0380f9079ff5f1e125992621842e08822632047cbe5c403f5936cb",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2022.1.1-beta-2/RobotBuilder-2022.1.1-beta-2.jar",
        sha256 = "374d14ebbbc94110c3f7be26696d5e3ebcb75e9b937de95100dc59a59936f993",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_linux64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1-beta-2/shuffleboard-2022.1.1-beta-2-linux64.jar",
        sha256 = "7d74d8ca98ff4442ce9fc0a2f21e6b9111b07be1d02c95df7b65e937c763b48e",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_mac64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1-beta-2/shuffleboard-2022.1.1-beta-2-mac64.jar",
        sha256 = "99699e6ff59a61126c29455714d14a40ad6f6c1a55558bda0c2fbd3c17c97b97",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_shuffleboard_shuffleboard_win64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/shuffleboard/shuffleboard/2022.1.1-beta-2/shuffleboard-2022.1.1-beta-2-win64.jar",
        sha256 = "1fd9c31093a988b60c4e76c978dde9e092e7b96980311365525a9d87b3500b9c",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1-beta-2/Glass-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "ce791cf38100204a7441bd5dfce7ff206a2acfb87dd19c67063429b2a83432fd",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1-beta-2/Glass-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "4603fa1c43f99aa2a80474167c685841adbc7768eb5c896db09fcbcb444225ab",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2022.1.1-beta-2/Glass-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "9f66a3eae56ede60580fe138e8a5bfc2639dda4e5df53913e7a49820bb57d601",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1-beta-2/OutlineViewer-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "d9782c3f1d51000c55ef31e30115cad9961ed247ca675964c9b46bb3195cc75b",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1-beta-2/OutlineViewer-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "0489b5a898e815f3a0748d56067a5a333d61b141df1b4ce822b24b03986c53ec",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2022.1.1-beta-2/OutlineViewer-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "b24c37cb16a6f5a7b6329ee9a204ec7a2ea5c21bc4d153e48f9cb220f87728c5",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1-beta-2/SysId-2022.1.1-beta-2-windowsx86-64.zip",
        sha256 = "77e5f9eea1c2f437cf4833f5eded4b4b5054ad0b7da781270fd69630db77d582",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1-beta-2/SysId-2022.1.1-beta-2-linuxx86-64.zip",
        sha256 = "f3fa63fc54876a04373f49a0a62bb73cb508908593611b8bcf579d305f91e87a",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2022.1.1-beta-2/SysId-2022.1.1-beta-2-osxx86-64.zip",
        sha256 = "635f6a6ba6e61f3dfdbb863f0ec2bf22764f6c3b3021a7eb8341388b7eceaa37",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
