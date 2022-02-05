load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_shared")

def setup_ni_2022_4_0_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_chipobject_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/chipobject/2022.4.0/chipobject-2022.4.0-linuxathena.zip",
        sha256 = "2657bf70a5b92df5bc94e6aa41b5c0c17564f9fe6eac9662b46451ddc64aaa79",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_visa_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/visa/2022.4.0/visa-2022.4.0-linuxathena.zip",
        sha256 = "3c9f247141b442cff02c9e3efab4f1d6ad533d387efdc2dd3c6adebb682395bc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_runtime_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/runtime/2022.4.0/runtime-2022.4.0-linuxathena.zip",
        sha256 = "31bc13116343a8eb0162aa5ade7cb4f724fe14116f9e4d67a3c614ddc6c4704f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_netcomm_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/netcomm/2022.4.0/netcomm-2022.4.0-linuxathena.zip",
        sha256 = "08aee713a5e99f0c3fa23c3588e93d101fef931a6e0fd297facccafd0cbd606e",
        build_file_content = cc_library_shared,
    )
