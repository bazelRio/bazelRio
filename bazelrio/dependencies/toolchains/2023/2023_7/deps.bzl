load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "filegroup_all")

def setup_toolchains_2023_7_dependencies():
    # C++
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_macos",
        url = "https://github.com/wpilibsuite/opensdk/releases/download/v2023-7/cortexa9_vfpv3-roborio-academic-2023-x86_64-apple-darwin-Toolchain-12.1.0.tgz",
        # sha256 = "511a64461bfdec00bacb9abe1470f1c112fc9773b29dbb275b1dc9560b973146",
        build_file_content = filegroup_all,
        patches = [
            "@bazelrio//dependencies/toolchains/2023/2023_7/patches:libc_no_sandboxfs.patch",
            "@bazelrio//dependencies/toolchains/2023/2023_7/patches:libpthread_no_sandboxfs.patch",
        ],
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_linux",
        url = "https://github.com/wpilibsuite/opensdk/releases/download/v2023-7/cortexa9_vfpv3-roborio-academic-2023-x86_64-linux-gnu-Toolchain-12.1.0.tgz",
        # sha256 = "56bd5b53a4149b06fd4cf675dc0596668af47ca8da72c461b7d772ada35cbdc5",
        build_file_content = filegroup_all,
        patches = [
            "@bazelrio//dependencies/toolchains/2023/2023_7/patches:libc_no_sandboxfs.patch",
            "@bazelrio//dependencies/toolchains/2023/2023_7/patches:libpthread_no_sandboxfs.patch",
        ],
    )
    maybe(
        http_archive,
        "__bazelrio_roborio_toolchain_windows",
        url = "https://github.com/wpilibsuite/opensdk/releases/download/v2023-7/cortexa9_vfpv3-roborio-academic-2023-x86_64-w64-mingw32-Toolchain-12.1.0.zip",
        sha256 = "36b94b972fd017f6fd15a57ddbaa20e18616d72f7de16d9c81c03a1e58cb8475",
        build_file_content = filegroup_all,
    )

    # Java
    maybe(
        http_archive,
        name = "__bazelrio_roborio_jdk_mac",
        build_file = "@bazel_tools//tools/jdk:jdk.BUILD",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.4.1%2B1/OpenJDK17U-jdk_x64_mac_hotspot_17.0.4.1_1.tar.gz"],
        # sha256 = "ac21a5a87f7cfa00212ab7c41f7eb80ca33640d83b63ad850be811c24095d61a",
        strip_prefix = "jdk-17.0.4.1+1/Contents/Home",
    )
    maybe(
        http_archive,
        name = "__bazelrio_roborio_jdk_linux",
        build_file = "@bazel_tools//tools/jdk:jdk.BUILD",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.4.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.4.1_1.tar.gz"],
        # sha256 = "5fbf8b62c44f10be2efab97c5f5dbf15b74fae31e451ec10abbc74e54a04ff44",
        strip_prefix = "jdk-17.0.4.1+1",
    )
    maybe(
        http_archive,
        name = "__bazelrio_roborio_jdk_windows",
        build_file = "@bazel_tools//tools/jdk:jdk.BUILD",
        urls = ["https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.4.1%2B1/OpenJDK17U-jdk_x64_windows_hotspot_17.0.4.1_1.zip"],
        # sha256 = "3860d2ed7405674baeb0f9f4c71377421716759fe4301e92bdd4dd43c0442dc3",
        strip_prefix = "jdk-17.0.4.1+1",
    )
