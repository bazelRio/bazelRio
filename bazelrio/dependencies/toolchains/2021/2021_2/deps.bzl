load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "filegroup_all")

def setup_toolchains_2021_2_dependencies():
    # C++
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_macos",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Mac-Toolchain-7.3.0.tar.gz",
        sha256 = "0822ff945ff422b176571cebe7b2dfdc0ef6bf685d3b6f6833db8dc218d992ae",
        build_file_content = filegroup_all,
        patches = [
            "@bazelrio//dependencies/toolchains/2021/2021_2/patches:libc_no_sandboxfs.patch",
            "@bazelrio//dependencies/toolchains/2021/2021_2/patches:libpthread_no_sandboxfs.patch",
        ],
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_linux",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Linux-Toolchain-7.3.0.tar.gz",
        sha256 = "00cc58bf0607d71e725919d28e22714ce1920692c4864bc86353fc8139cbf7b7",
        build_file_content = filegroup_all,
        patches = [
            "@bazelrio//dependencies/toolchains/2021/2021_2/patches:libc_no_sandboxfs.patch",
            "@bazelrio//dependencies/toolchains/2021/2021_2/patches:libpthread_no_sandboxfs.patch",
        ],
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_windows",
        url = "https://github.com/wpilibsuite/roborio-toolchain/releases/download/v2021-2/FRC-2021-Windows-Toolchain-7.3.0.zip",
        sha256 = "f3e9ba32b63d3cd26e242feeb14e878fecbda86c19c12b98c3084c629e06acb3",
        build_file_content = filegroup_all,
    )

    # Java
    maybe(
        http_archive,
        name = "__bazelrio_roborio_jdk_mac",
        build_file = "@bazel_tools//tools/jdk:jdk.BUILD",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12+7/OpenJDK11U-jdk_x64_mac_hotspot_11.0.12_7.tar.gz"],
        sha256 = "13d056ee9a57bf2d5b3af4504c8f8cf7a246c4dff78f96b70dd05dad98075855",
        strip_prefix = "jdk-11.0.12+7/Contents/Home",
    )
    maybe(
        http_archive,
        name = "__bazelrio_roborio_jdk_linux",
        build_file = "@bazel_tools//tools/jdk:jdk.BUILD",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12+7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.12_7.tar.gz"],
        sha256 = "8770f600fc3b89bf331213c7aa21f8eedd9ca5d96036d1cd48cb2748a3dbefd2",
        strip_prefix = "jdk-11.0.12+7",
    )
    maybe(
        http_archive,
        name = "__bazelrio_roborio_jdk_windows",
        build_file = "@bazel_tools//tools/jdk:jdk.BUILD",
        urls = ["https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.12+7/OpenJDK11U-jdk_x64_windows_hotspot_11.0.12_7.zip"],
        sha256 = "c54123dd4b0d6473221539e7003b8ca1c1757c5588c46465565b03bf8781f807",
        strip_prefix = "jdk-11.0.12+7",
    )
