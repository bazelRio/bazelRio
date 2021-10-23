
load("//dependencies/toolchains/2021:deps.bzl", "setup_toolchains_2021_dependencies")

def setup_toolchains_dependencies(version):
    if version == "2021":
        setup_toolchains_2021_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))