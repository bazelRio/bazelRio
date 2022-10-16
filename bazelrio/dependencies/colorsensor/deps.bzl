load("//dependencies/colorsensor/1_2_0:deps.bzl", "setup_colorsensor_1_2_0_dependencies")

def setup_colorsensor_dependencies(version):
    if version == None:
        print("Not setting up dependencies for colorsensor")
    elif version == "1.2.0":
        setup_colorsensor_1_2_0_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
