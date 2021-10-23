def __prepare_halsim(halsim_deps):
    extension_names = []
    for dep in halsim_deps:
        lbl = Label(dep)
        extension_names.append(lbl.name)

    return extension_names

def robot_cc_binary(name, team_number, srcs = [], hdrs = [], deps = [], halsim_configs = None, **kwargs):
    native.cc_library(
        name = name + "-lib",
        deps = deps,
        srcs = srcs,
        hdrs = hdrs,
        **kwargs
    )

    native.cc_binary(
        name = name,
        deps = [name + "-lib"],
        **kwargs
    )

    if halsim_configs:
        for sim_name, halsim_deps in halsim_configs.items():
            extension_names = __prepare_halsim(halsim_deps)
            env = select({
                "@bazel_tools//src/conditions:windows": {"HALSIM_EXTENSIONS": ";".join(extension_names)},
                "//conditions:default": {"HALSIM_EXTENSIONS": ":".join(extension_names)},
            })

            native.cc_binary(
                name = name + "-sim-" + sim_name,
                deps = [name + "-lib"] + halsim_deps,
                env = env,
                **kwargs
            )

    native.genrule(
        name = "{}.deploy".format(name),
        srcs = [":{}".format(name)],
        tools = ["@bazelrio//scripts/deploy"],
        outs = ["deploy"],
        executable = True,
        cmd = "echo '$(location @bazelrio//scripts/deploy)' --robot_binary '$(location {})' --team_number '{}' > $@".format(name, team_number),
    )
