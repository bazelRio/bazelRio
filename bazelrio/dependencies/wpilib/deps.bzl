load("//dependencies/wpilib/2023_1_1:deps.bzl", "setup_wpilib_2023_1_1_dependencies")
load("//dependencies/wpilib/2023_2_1:deps.bzl", "setup_wpilib_2023_2_1_dependencies")

def setup_wpilib_dependencies(version):
    if version == None:
        print("Not setting up dependencies for wpilib")
    elif version == "2023.1.1":
        setup_wpilib_2023_1_1_dependencies()
    elif version == "2023.2.1":
        setup_wpilib_2023_2_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
