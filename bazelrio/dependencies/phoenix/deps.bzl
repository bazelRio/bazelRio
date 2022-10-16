load("//dependencies/phoenix/5_20_2:deps.bzl", "setup_phoenix_5_20_2_dependencies")
load("//dependencies/phoenix/5_21_1:deps.bzl", "setup_phoenix_5_21_1_dependencies")
load("//dependencies/phoenix/5_21_2:deps.bzl", "setup_phoenix_5_21_2_dependencies")
load("//dependencies/phoenix/5_21_3:deps.bzl", "setup_phoenix_5_21_3_dependencies")

def setup_phoenix_dependencies(version):
    if version == None:
        print("Not setting up dependencies for phoenix")
    elif version == "5.20.2":
        setup_phoenix_5_20_2_dependencies()
    elif version == "5.21.1":
        setup_phoenix_5_21_1_dependencies()
    elif version == "5.21.2":
        setup_phoenix_5_21_2_dependencies()
    elif version == "5.21.3":
        setup_phoenix_5_21_3_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
