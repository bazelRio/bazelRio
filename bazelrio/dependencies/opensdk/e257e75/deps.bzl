load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "filegroup_all")

def setup_opensdk_e257e75_dependencies():
    # C++
    maybe(
        http_archive,
        "__bazelrio_opensdk_roborio_toolchain_macos",
        url = "https://github.com/noamzaks/opensdk/releases/download/e257e75/roborio-cortexa9_vfpv3-macos_x86_64.zip",
        sha256 = "b1ed8ebeb3a196a15a166029840fb5e9a1b9ff3e3a8f1af637f222e4da970b90",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_opensdk_roborio_toolchain_linux",
        url = "https://github.com/noamzaks/opensdk/releases/download/e257e75/roborio-cortexa9_vfpv3-linux_x86_64.zip",
        sha256 = "662d6d9a51d2a04e5591d531bf0be6545d1c006e1b5c6b0c2fcff0d6a0b764d6",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_opensdk_roborio_toolchain_windows",
        url = "https://github.com/noamzaks/opensdk/releases/download/e257e75/roborio-cortexa9_vfpv3-windows_x86_64.zip",
        sha256 = "2fffe8bc222e1276722cfcb4b02fde22dd4f17254c43b846922ea09d271a6e80",
        build_file_content = filegroup_all,
    )
