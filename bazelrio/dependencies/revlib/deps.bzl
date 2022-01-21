load("//dependencies/revlib/2022_0_0:deps.bzl", "setup_revlib_2022_0_0_dependencies")
load("//dependencies/revlib/2022_1_0:deps.bzl", "setup_revlib_2022_1_0_dependencies")
load("//dependencies/revlib/2022_1_1:deps.bzl", "setup_revlib_2022_1_1_dependencies")

def setup_revlib_dependencies(version):
    if version == "2022.0.0":
        setup_revlib_2022_0_0_dependencies()
    elif version == "2022.1.0":
        setup_revlib_2022_1_0_dependencies()
    elif version == "2022.1.1":
        setup_revlib_2022_1_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
