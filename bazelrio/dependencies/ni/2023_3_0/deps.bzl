load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_shared")

def setup_ni_2023_3_0_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_chipobject_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/chipobject/2023.3.0/chipobject-2023.3.0-linuxathena.zip",
        sha256 = "e0279abec3de35fdb4d3d9a2a6d78f5e33d0c7555f65f101396b6b56a2c59e48",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_visa_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/visa/2023.3.0/visa-2023.3.0-linuxathena.zip",
        sha256 = "8a2df8426264ecf72ce2eee67631a9ec8b29344699db2aba8b67dd7ddcdc2e27",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_runtime_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/runtime/2023.3.0/runtime-2023.3.0-linuxathena.zip",
        sha256 = "c74921b25fb0ee9c6def4872f25b177febbc11cc0dc8605b32af4248eecc2142",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ni-libraries_netcomm_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ni-libraries/netcomm/2023.3.0/netcomm-2023.3.0-linuxathena.zip",
        sha256 = "22fc5dc83740b5bb4de4268a35df331a8b58c01fc204ac95220484f22fc1a71d",
        build_file_content = cc_library_shared,
    )
