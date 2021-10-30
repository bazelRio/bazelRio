load("//dependencies/opencv/3_4_7_5:deps.bzl", "setup_opencv_3_4_7_5_dependencies")
load("//dependencies/opencv/4_5_2_1:deps.bzl", "setup_opencv_4_5_2_1_dependencies")

def setup_opencv_dependencies(version):
    if version == "3.4.7-5":
        setup_opencv_3_4_7_5_dependencies()
    elif version == "4.5.2-1":
        setup_opencv_4_5_2_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
