load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_shared")

def setup_ni_2022_2_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_chipobject_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/chipobject/2022.2.3/chipobject-2022.2.3-linuxathena.zip",
        sha256 = "fdf47ae5ce052edd82ba2b6e007faabf9286f87b079e3789afc3235733d5475c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_visa_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/visa/2022.2.3/visa-2022.2.3-linuxathena.zip",
        sha256 = "014fff5a4684f3c443cbed8c52f19687733dd7053a98a1dad89941801e0b7930",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_runtime_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/runtime/2022.2.3/runtime-2022.2.3-linuxathena.zip",
        sha256 = "186d1b41e96c5d761705221afe0b9f488d1ce86e8149a7b0afdc3abc93097266",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_netcomm_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/netcomm/2022.2.3/netcomm-2022.2.3-linuxathena.zip",
        sha256 = "f56c2fc0943f27f174642664b37fb4529d6f2b6405fe41a639a4c9f31e175c73",
        build_file_content = cc_library_shared,
    )
