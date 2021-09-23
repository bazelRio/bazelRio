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

def setup_sparkmax_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_linuxathena",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-linuxathena.zip",
        sha256 = "df0c97373fa3c033a552cf15d5b9afcd6d9231737f6bca8cf1c4df63c2d30658",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_linuxathena",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-linuxathena.zip",
        sha256 = "85f430e7f14635e4556d5e9147d9dda7f0180f6b487f8959c96a635424b8f11a",
        build_file_content = filegroup_all,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-cpp_headers",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-cpp/1.5.4/SparkMax-cpp-1.5.4-headers.zip",
        sha256 = "e5c5c8c3e72b399101ee1056279d72540554ffb149d9351036f8d977b36e3c1f",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_sparkmax-driver_headers",
        url = "http://www.revrobotics.com/content/sw/max/sdk/maven/com/revrobotics/frc/SparkMax-driver/1.5.4/SparkMax-driver-1.5.4-headers.zip",
        sha256 = "c3984a9c073125bedb1a299c1e8e831b43e728b83dbc10d8e0032cb74186fed2",
        build_file_content = cc_library_headers,
    )
