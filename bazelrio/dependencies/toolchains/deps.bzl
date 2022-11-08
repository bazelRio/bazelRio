load("//dependencies/toolchains/2021/2021_2:deps.bzl", "setup_toolchains_2021_2_dependencies")
load("//dependencies/toolchains/2022/2022_1:deps.bzl", "setup_toolchains_2022_1_dependencies")

def setup_toolchains_dependencies(version):
    if version == None:
        print("not setting up toolchains")
    elif version == "2021-2":
        setup_toolchains_2021_2_dependencies()
    elif version == "2022-1":
        setup_toolchains_2022_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
