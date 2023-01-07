load("//dependencies/toolchains/2023/2023_7:deps.bzl", "setup_toolchains_2023_7_dependencies")

def setup_toolchains_dependencies(version):
    if version == None:
        print("not setting up toolchains")
    elif version == "2023-7":
        setup_toolchains_2023_7_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
