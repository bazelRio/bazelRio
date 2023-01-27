load("//dependencies/ni/2023_3_0:deps.bzl", "setup_ni_2023_3_0_dependencies")

def setup_ni_dependencies(version):
    if version == None:
        print("Not setting up dependencies for ni")
    elif version == "2023.3.0":
        setup_ni_2023_3_0_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
