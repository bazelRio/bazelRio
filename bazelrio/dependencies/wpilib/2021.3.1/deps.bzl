load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
filegroup_all = """filegroup(
    name = "all",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

cc_library_headers = """cc_library(
    name = "headers",
    hdrs = glob(["**"]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
"""

def setup_wpilib_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxathena.zip",
        sha256 = "637dc07b7a3e99b4a9ffbb73ff763e61baa379ac6dce56c8bd5ffbc8d91d722d",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-headers.zip",
        sha256 = "c1bb5ba16138be092c52664147d26b45347d68fdb086c483c7ca8f6383bcab87",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxathena.zip",
        sha256 = "e9de32abe3739697a3a92963c9eca4bf8755edfb0f11ac95e22d0190a3185f56",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-headers.zip",
        sha256 = "81b4d98d7ae4f92b2887180aea29ef1e780c5570e3fdbe08e02183e54952bd62",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxathena.zip",
        sha256 = "ad48bae20f42850938a1758c9f82e54c5cb5e286ad0b09adb701d700bd7f8ec8",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-headers.zip",
        sha256 = "b2a96f7ce07198b139face9dc341c6550d5044fa32f48435b50d986ea5c8ee55",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxathena.zip",
        sha256 = "dabb3d971cf0aee46d4b104d38abd47cc36219b025b299bfb9fea82e53deacc7",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-headers.zip",
        sha256 = "2451d44dc2a3d16ee315738336b792642a7b8dd8c4aef0f6b7b0fb80c0a527d2",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxathena.zip",
        sha256 = "172d57588b8b7c26829fdc5a1ffaa938f65552a5e2f7cc28a510705f881de459",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-headers.zip",
        sha256 = "dac88ad40484aaa6721d190c23b33668fa11a86e32877458285c2ea678db54d3",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-linuxathena.zip",
        sha256 = "5e3311ef761b4c79ebf67f78aed423d1650f3477120d4c483925e6b4c9d2eec6",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2021.3.1/wpilibNewCommands-cpp-2021.3.1-headers.zip",
        sha256 = "c919969657ce44a5a20cc84140997149082dbfda5cda7f170b68d2e94744921e",
        build_file_content = cc_library_headers,
    )