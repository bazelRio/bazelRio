load("//dependencies/revlib/2023_1_1:deps.bzl", "setup_revlib_2023_1_1_dependencies")

def setup_revlib_dependencies(version):
    if version == None:
        print("Not setting up dependencies for revlib")
    elif version == "2023.1.1":
        setup_revlib_2023_1_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
