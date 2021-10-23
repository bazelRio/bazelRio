load("//dependencies/ni/2020_9_2:deps.bzl", "setup_ni_2020_9_2_dependencies")

def setup_ni_dependencies(version):
    if version == "2020.9.2":
        setup_ni_2020_9_2_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
