load("//dependencies/toolchains/2021:deps.bzl", "setup_toolchains_2021_dependencies")
load("//dependencies/toolchains/2022_1:deps.bzl", "setup_toolchains_2022_1_dependencies")

def setup_toolchains_dependencies(version):
    if version == "2021":
        setup_toolchains_2021_dependencies()
    elif version == "2022-1":
        setup_toolchains_2022_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
