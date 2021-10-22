load("//dependencies/wpilib/2021_3_1:deps.bzl", "setup_wpilib_2021_3_1_dependencies")

def setup_wpilib_dependencies(version):
    if version == "2021.3.1":
        setup_wpilib_2021_3_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
