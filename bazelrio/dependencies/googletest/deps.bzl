load("//dependencies/googletest/1_9_0_5_437e100_1:deps.bzl", "setup_googletest_1_9_0_5_437e100_1_dependencies")

def setup_googletest_dependencies(version):
    if version == "1.9.0-5-437e100-1":
        setup_googletest_1_9_0_5_437e100_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
