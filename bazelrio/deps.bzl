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

def setup_bazelrio_dependencies():
    # Other bazel rules
    maybe(
        http_archive,
        "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.3.0/rules_python-0.3.0.tar.gz",
        sha256 = "934c9ceb552e84577b0faf1e5a2f0450314985b4d8712b2b70717dc679fdc01b",
    )

    # Toolchains
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_macos",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Mac-Toolchain-7.3.0.tar.gz",
        sha256 = "0822ff945ff422b176571cebe7b2dfdc0ef6bf685d3b6f6833db8dc218d992ae",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_linux",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz",
        sha256 = "00cc58bf0607d71e725919d28e22714ce1920692c4864bc86353fc8139cbf7b7",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_windows",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Windows-Toolchain-7.3.0.zip",
        sha256 = "f3e9ba32b63d3cd26e242feeb14e878fecbda86c19c12b98c3084c629e06acb3",
        build_file_content = filegroup_all,
    )

    # Headers
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_headers",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-headers.zip",
        sha256 = "c1bb5ba16138be092c52664147d26b45347d68fdb086c483c7ca8f6383bcab87",
        build_file_content = cc_library_headers,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_headers",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-headers.zip",
        sha256 = "81b4d98d7ae4f92b2887180aea29ef1e780c5570e3fdbe08e02183e54952bd62",
        build_file_content = cc_library_headers,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_headers",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-headers.zip",
        sha256 = "b2a96f7ce07198b139face9dc341c6550d5044fa32f48435b50d986ea5c8ee55",
        build_file_content = cc_library_headers,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_headers",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-headers.zip",
        sha256 = "2451d44dc2a3d16ee315738336b792642a7b8dd8c4aef0f6b7b0fb80c0a527d2",
        build_file_content = cc_library_headers,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_headers",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-headers.zip",
        sha256 = "dac88ad40484aaa6721d190c23b33668fa11a86e32877458285c2ea678db54d3",
        build_file_content = cc_library_headers,
    )

    # Shared libraries
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpilibc/wpilibc-cpp/2021.3.1/wpilibc-cpp-2021.3.1-linuxathena.zip",
        sha256 = "637dc07b7a3e99b4a9ffbb73ff763e61baa379ac6dce56c8bd5ffbc8d91d722d",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/hal/hal-cpp/2021.3.1/hal-cpp-2021.3.1-linuxathena.zip",
        sha256 = "e9de32abe3739697a3a92963c9eca4bf8755edfb0f11ac95e22d0190a3185f56",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpiutil/wpiutil-cpp/2021.3.1/wpiutil-cpp-2021.3.1-linuxathena.zip",
        sha256 = "ad48bae20f42850938a1758c9f82e54c5cb5e286ad0b09adb701d700bd7f8ec8",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/ntcore/ntcore-cpp/2021.3.1/ntcore-cpp-2021.3.1-linuxathena.zip",
        sha256 = "dabb3d971cf0aee46d4b104d38abd47cc36219b025b299bfb9fea82e53deacc7",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpimath/wpimath-cpp/2021.3.1/wpimath-cpp-2021.3.1-linuxathena.zip",
        sha256 = "172d57588b8b7c26829fdc5a1ffaa938f65552a5e2f7cc28a510705f881de459",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_chipobject_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/ni-libraries/chipobject/2020.9.2/chipobject-2020.9.2-linuxathena.zip",
        sha256 = "036060af780bc4d3b852d389a5210ef73df3041b9399762e7be8ea8291bb16e3",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_netcomm_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/ni-libraries/netcomm/2020.9.2/netcomm-2020.9.2-linuxathena.zip",
        sha256 = "6a3dac9d74fe20358812924cc3c2bfaafde189e2b07dc444ba5d38e46ca02b06",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_runtime_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/ni-libraries/runtime/2020.9.2/runtime-2020.9.2-linuxathena.zip",
        sha256 = "a0aeff05908590b1c63071e02d635010bde54c3abb6dc016c78d5617a72c555a",
        build_file_content = filegroup_all,
    )

    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_visa_shared",
        url = "https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/ni-libraries/visa/2020.9.2/visa-2020.9.2-linuxathena.zip",
        sha256 = "2cf83ce761145ee57b1b88d817cbadcbf1b34cf1759a813fae1cd135c23e6588",
        build_file_content = filegroup_all,
    )
