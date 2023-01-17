load("//dependencies/phoenixpro/23_0_1:deps.bzl", "setup_phoenixpro_23_0_1_dependencies")
load("//dependencies/phoenixpro/23_0_4:deps.bzl", "setup_phoenixpro_23_0_4_dependencies")

def setup_phoenixpro_dependencies(version):
    if version == None:
        print("Not setting up dependencies for phoenixpro")
    elif version == "23.0.1":
        setup_phoenixpro_23_0_1_dependencies()
    elif version == "23.0.4":
        setup_phoenixpro_23_0_4_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
