def __prepare_halsim(halsim_deps):
    extension_names = []
    for dep in halsim_deps:
        lbl = Label(dep)
        extension_names.append(lbl.name)

    return extension_names

def get_dynamic_dependencies(targets):
    shared_lib_native_deps = []

    for target in targets:
        if CcInfo in target:
            for linker_input in target[CcInfo].linking_context.linker_inputs.to_list():
                for library in linker_input.libraries:
                    if library.dynamic_library and not library.static_library:
                        shared_lib_native_deps.append(library.dynamic_library)

    return shared_lib_native_deps

def _discover_dynamic_dependencies_impl(ctx):
    return [DefaultInfo(files = depset(get_dynamic_dependencies(ctx.attr.deps)))]

discover_dynamic_dependencies = rule(
    implementation = _discover_dynamic_dependencies_impl,
    attrs = {
        "deps": attr.label_list(mandatory = True),
    },
)

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

    discover_dynamic_deps_task_name = name + ".discover_dynamic_deps"
    discover_dynamic_dependencies(
        name = discover_dynamic_deps_task_name,
        deps = [name + "-lib"],
    )

    base_deploy_command = "$(location @bazelrio//scripts/deploy) --robot_binary $(location {}) --team_number {} --dynamic_libraries $(locations {})".format(name, team_number, discover_dynamic_deps_task_name)
    native.genrule(
        name = "{}.deploy".format(name),
        srcs = [":{}".format(name), discover_dynamic_deps_task_name],
        tools = ["@bazelrio//scripts/deploy"],
        outs = ["deploy.bat"],
        executable = True,
        cmd = "echo " + base_deploy_command + " > $@",
        cmd_bat = "echo @echo off > $@ && echo " + base_deploy_command + " >> $@",
    )
