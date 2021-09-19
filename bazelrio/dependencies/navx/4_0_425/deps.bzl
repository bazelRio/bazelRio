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

def setup_navx_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_linuxathena",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-linuxathena.zip",
        sha256 = "6acf09ae05fe95b11c24370c4cc6a95f0feb65097f25e5c7e39b5d21b775d519",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-cpp_headers",
        url = "https://repo1.maven.org/maven2/com/kauailabs/navx/frc/navx-cpp/4.0.425/navx-cpp-4.0.425-headers.zip",
        sha256 = "6482edc027dff06570e81747ff87aa8369b302122c38530b0cab0d2c11e83f80",
        build_file_content = cc_library_headers,
    )