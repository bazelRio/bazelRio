load("//dependencies/wpilib/2022_1_1:deps.bzl", "setup_wpilib_2022_1_1_dependencies")
load("//dependencies/wpilib/2022_2_1:deps.bzl", "setup_wpilib_2022_2_1_dependencies")
load("//dependencies/wpilib/2022_3_1:deps.bzl", "setup_wpilib_2022_3_1_dependencies")
load("//dependencies/wpilib/2022_4_1:deps.bzl", "setup_wpilib_2022_4_1_dependencies")

def setup_wpilib_dependencies(version):
    if version == None:
        print("Not setting up dependencies for wpilib")
    elif version == "2022.1.1":
        setup_wpilib_2022_1_1_dependencies()
    elif version == "2022.2.1":
        setup_wpilib_2022_2_1_dependencies()
    elif version == "2022.3.1":
        setup_wpilib_2022_3_1_dependencies()
    elif version == "2022.4.1":
        setup_wpilib_2022_4_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
