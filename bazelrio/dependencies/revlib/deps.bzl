load("//dependencies/revlib/2022_0_0:deps.bzl", "setup_revlib_2022_0_0_dependencies")

def setup_revlib_dependencies(version):
    if version == "2022.0.0":
        setup_revlib_2022_0_0_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
