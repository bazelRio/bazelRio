load("//dependencies/phoenix/5_30_2:deps.bzl", "setup_phoenix_5_30_2_dependencies")
load("//dependencies/phoenix/5_30_3_23_0_4:deps.bzl", "setup_phoenix_5_30_3_23_0_4_dependencies")

def setup_phoenix_dependencies(version):
    if version == None:
        print("Not setting up dependencies for phoenix")
    elif version == "5.30.2":
        setup_phoenix_5_30_2_dependencies()
    elif version == "5.30.3_23.0.4":
        setup_phoenix_5_30_3_23_0_4_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
