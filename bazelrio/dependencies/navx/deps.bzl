load("//dependencies/navx/4_0_425:deps.bzl", "setup_navx_4_0_425_dependencies")

def setup_navx_dependencies(version):
    if version == "4.0.425":
        setup_navx_4_0_425_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
