load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

load("//dependencies/toolchains/2021:deps.bzl", "setup_toolchains_dependencies")

# THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE BELOW THIS LINE!load(//dependencies/wpilib/2021/3/1/:deps.bzl, setup_wpilib_dependencies)
load("//dependencies/wpilib/2021_3_1:deps.bzl", "setup_wpilib_dependencies")
load("//dependencies/ni/2020_9_2:deps.bzl", "setup_ni_dependencies")
load("//dependencies/sparkmax/1_5_4:deps.bzl", "setup_sparkmax_dependencies")
load("//dependencies/colorsensor/1_2_0:deps.bzl", "setup_colorsensor_dependencies")
load("//dependencies/phoenix/5_19_4:deps.bzl", "setup_phoenix_dependencies")
load("//dependencies/navx/4_0_425:deps.bzl", "setup_navx_dependencies")
# THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE ABOVE THIS LINE!

def setup_bazelrio_dependencies():
    # Other bazel rules
    maybe(
        http_archive,
        "rules_python",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.3.0/rules_python-0.3.0.tar.gz",
        sha256 = "934c9ceb552e84577b0faf1e5a2f0450314985b4d8712b2b70717dc679fdc01b",
    )

    # Toolchains
    setup_toolchains_dependencies()

    # THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE BELOW THIS LINE!setup_wpilib_dependencies()
    setup_wpilib_dependencies()
    setup_ni_dependencies()
    setup_sparkmax_dependencies()
    setup_colorsensor_dependencies()
    setup_phoenix_dependencies()
    setup_navx_dependencies()
    # THE FOLLOWING LINES ARE AUTOMATICALLY GENERATED. DO NOT WRITE ABOVE THIS LINE!
