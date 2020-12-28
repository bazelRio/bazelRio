load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def setup_wpilibc_dependencies():
    http_archive(
        name = "wpilibc",
        urls = ["https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpilibc/wpilibc-cpp/2020.3.2/wpilibc-cpp-2020.3.2-linuxathenastatic.zip"],
        build_file_content = """
cc_library(
    name = "library",
    hdrs = glob([
        "**/*.a",
    ]),
    visibility = ["//visibility:public"],
)
""",
    )
    http_archive(
        name = "wpilibc_headers",
        urls = ["https://frcmaven.wpi.edu/artifactory/release/edu/wpi/first/wpilibc/wpilibc-cpp/2020.3.2/wpilibc-cpp-2020.3.2-headers.zip"],
        build_file_content = """
cc_library(
    name = "headers",
    hdrs = glob([
        "**/*.h",
        "**/*.inc",
        "**/*.inl",
    ]),
    includes = ["."],
    visibility = ["//visibility:public"],
)
""",
    )
