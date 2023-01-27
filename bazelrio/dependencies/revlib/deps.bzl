load("//dependencies/revlib/2023_1_1:deps.bzl", "setup_revlib_2023_1_1_dependencies")
load("//dependencies/revlib/2023_1_2:deps.bzl", "setup_revlib_2023_1_2_dependencies")

def setup_revlib_dependencies(version):
    if version == None:
        print("Not setting up dependencies for revlib")
    elif version == "2023.1.1":
        setup_revlib_2023_1_1_dependencies()
    elif version == "2023.1.2":
        setup_revlib_2023_1_2_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
