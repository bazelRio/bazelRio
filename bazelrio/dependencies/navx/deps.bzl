load("//dependencies/navx/2023_0_0:deps.bzl", "setup_navx_2023_0_0_dependencies")

def setup_navx_dependencies(version):
    if version == None:
        print("Not setting up dependencies for navx")
    elif version == "2023.0.0":
        setup_navx_2023_0_0_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
