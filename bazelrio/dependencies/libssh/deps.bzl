load("//dependencies/libssh/0_95_6:deps.bzl", "setup_libssh_0_95_6_dependencies")

def setup_libssh_dependencies(version):
    if version == None:
        print("Not setting up dependencies for libssh")
    elif version == "0.95-6":
        setup_libssh_0_95_6_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
