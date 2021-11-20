load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_shared")

def setup_ni_2022_2_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_chipobject_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/chipobject/2022.2.2/chipobject-2022.2.2-linuxathena.zip",
        sha256 = "e4adaf5badfd370a03c1309eb6812e9016d166f4c258357ed62e0c86a2da15ab",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_visa_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/visa/2022.2.2/visa-2022.2.2-linuxathena.zip",
        sha256 = "d513bb717181031874d96e1f2b7bff4d850292038469e6a510448f6b055d7d5d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_runtime_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/runtime/2022.2.2/runtime-2022.2.2-linuxathena.zip",
        sha256 = "cdfae245d31b527a709a25fcc5d89bb47875d512989aa147fc002dabacb263d7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_netcomm_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/netcomm/2022.2.2/netcomm-2022.2.2-linuxathena.zip",
        sha256 = "ae5e21bcda2947d8b35a8cee0db2d63d966a0efca65f73e7b3f8b2616d338854",
        build_file_content = cc_library_shared,
    )
