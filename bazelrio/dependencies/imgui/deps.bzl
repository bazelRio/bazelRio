load("//dependencies/imgui/1_89_1_1:deps.bzl", "setup_imgui_1_89_1_1_dependencies")

def setup_imgui_dependencies(version):
    if version == None:
        print("Not setting up dependencies for imgui")
    elif version == "1.89.1-1":
        setup_imgui_1_89_1_1_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
