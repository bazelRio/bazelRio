def default_native_shared_platforms():
    return ["windowsx86-64", "linuxx86-64", "osxx86-64"]


def default_native_static_platforms():
    return ["windowsx86-64static", "linuxx86-64static", "osxx86-64static"]


def default_all_platforms():
    return (
        ["linuxathena", "linuxathenastatic"]
        + default_native_shared_platforms()
        + default_native_static_platforms()
    )
