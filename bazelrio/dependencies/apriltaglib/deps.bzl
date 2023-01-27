load("//dependencies/apriltaglib/3_2_0_3:deps.bzl", "setup_apriltaglib_3_2_0_3_dependencies")

def setup_apriltaglib_dependencies(version):
    if version == None:
        print("Not setting up dependencies for apriltaglib")
    elif version == "3.2.0-3":
        setup_apriltaglib_3_2_0_3_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
