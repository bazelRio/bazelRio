def default_native_shared_platforms():
    return ["linuxarm32", "linuxarm64", "linuxx86-64", "osxuniversal", "windowsx86-64"]


def default_native_static_platforms():
    return ["linuxarm32static", "linuxarm64static", "linuxx86-64static", "osxuniversalstatic", "windowsx86-64static"]

def default_tools_platforms():
    return ["linuxx64", "macx64", "winx64"]

def default_all_platforms():
    return (
        ["linuxathena", "linuxathenastatic"]
        + default_native_shared_platforms()
        + default_native_static_platforms()
    )
