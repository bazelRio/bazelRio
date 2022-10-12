load("//dependencies/opensdk/e257e75:deps.bzl", "setup_opensdk_e257e75_dependencies")

def setup_opensdk_dependencies(version):
    if version == "e257e75":
        setup_opensdk_e257e75_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
