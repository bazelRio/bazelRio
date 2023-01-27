load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_static")

def setup_libssh_0_95_6_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-6/libssh-0.95-6-linuxarm32static.zip",
        sha256 = "dcc81a92c0988732c903265b6561b8906e501be7b4bac2aeee3e3586df98abc0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-6/libssh-0.95-6-linuxarm64static.zip",
        sha256 = "07dea29c621ae6d92e6f2c12252b9d085370fb4d526dd73f3b778b2397d206bf",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-6/libssh-0.95-6-linuxx86-64static.zip",
        sha256 = "07b5be45bfe07dfaadaf7ab32d71302499a764f0fa915c61c96c8a5a4521b243",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-6/libssh-0.95-6-osxuniversalstatic.zip",
        sha256 = "6a99e89759544938976211a85b43c5f1933cacaf2f683268d4ab673d8dc57e10",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-6/libssh-0.95-6-windowsx86-64static.zip",
        sha256 = "40fd4d1c67e47b81b18ef67f43f4bbb95897c3f4d4d36594c6a23e6d7addbc25",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_libssh_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/libssh/0.95-6/libssh-0.95-6-headers.zip",
        sha256 = "266a13c81556aecee5b8b753d9bd444f76b670e34dda259b9403ec45f2b4f055",
        build_file_content = cc_library_headers,
    )
