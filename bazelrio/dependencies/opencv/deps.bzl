load("//dependencies/opencv/4_6_0_3:deps.bzl", "setup_opencv_4_6_0_3_dependencies")

def setup_opencv_dependencies(version):
    if version == None:
        print("Not setting up dependencies for opencv")
    elif version == "4.6.0-3":
        setup_opencv_4_6_0_3_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
