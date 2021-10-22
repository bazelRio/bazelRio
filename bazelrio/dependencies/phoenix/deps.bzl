load("//dependencies/phoenix/5_19_4:deps.bzl", "setup_phoenix_5_19_4_dependencies")

def setup_phoenix_dependencies(version):
    if version == "5.19.4":
        setup_phoenix_5_19_4_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
