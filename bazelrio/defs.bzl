def __prepare_halsim(halsim_deps):
    extension_names = []
    for dep in halsim_deps:
        lbl = Label(dep)
        extension_names.append(lbl.name)

    return extension_names

def _get_dynamic_dependencies(target):
    shared_lib_native_deps = []

    if CcInfo in target:
        for linker_input in target[CcInfo].linking_context.linker_inputs.to_list():
            for library in linker_input.libraries:
                if library.dynamic_library and not library.static_library:
                    shared_lib_native_deps.append(library.dynamic_library)
    if JavaInfo in target:
        for library in target[JavaInfo].transitive_native_libraries.to_list():
            if library.dynamic_library and not library.static_library:
                    shared_lib_native_deps.append(library.dynamic_library)

    return shared_lib_native_deps

def _roborio_deploy_impl(ctx):
    executable = ctx.actions.declare_file(ctx.label.name + ".bat")
    dynamic_libraries = _get_dynamic_dependencies(ctx.attr.lib)

    deploy_command = "{} --robot_binary {} --team_number {} --robot_command '{}' --dynamic_libraries {} $@".format(
        ctx.executable.deploy_tool.short_path,
        ctx.executable.src.short_path,
        ctx.attr.team_number,
        ctx.attr.robot_command,
        " ".join([dylib.short_path for dylib in dynamic_libraries]),
    )

    ctx.actions.write(executable, deploy_command, is_executable=True)

    return [
        DefaultInfo(
            executable = executable,
            runfiles = ctx.attr.deploy_tool[DefaultInfo].default_runfiles.merge(
                ctx.runfiles(
                    files=[ctx.executable.src] + dynamic_libraries,
                ),
            ),
        ),
    ]

_roborio_deploy = rule(
    attrs = {
        "deploy_tool": attr.label(
            cfg = "exec",
            default = Label("@bazelrio//scripts/deploy"),
            executable = True,
        ),
        "lib": attr.label(
            mandatory = True,
        ),
        "robot_command": attr.string(
            mandatory = True,
        ),
        "src": attr.label(
            allow_single_file = True,
            cfg = "target",
            executable = True,
            mandatory = True,
        ),
        "team_number": attr.int(
            mandatory = True,
        ),
    },
    executable = True,
    implementation = _roborio_deploy_impl,
)

def robot_cc_binary(name, team_number, srcs = [], hdrs = [], deps = [], halsim_configs = None, **kwargs):
    native.cc_library(
        name = name + ".lib",
        deps = deps,
        srcs = srcs,
        hdrs = hdrs,
        **kwargs
    )

    native.cc_binary(
        name = name,
        deps = [name + ".lib"],
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
                name = name + ".simulation." + sim_name,
                deps = [name + ".lib"] + halsim_deps,
                env = env,
                **kwargs
            )

    _roborio_deploy(
        name = name + ".deploy",
        src = name,
        lib = name + ".lib",
        robot_command = "{}",
        team_number = team_number,
    )

def robot_java_binary(name, team_number, **kwargs):
    native.java_binary(
        name = name,
        **kwargs
    )

    # TODO: add simulation

    _roborio_deploy(
        name = name + ".deploy",
        src = name + "_deploy.jar",
        lib = name,
        robot_command = "/usr/local/frc/JRE/bin/java -XX:+UseConcMarkSweepGC -Djava.library.path=/usr/local/frc/third-party/lib -Djava.lang.invoke.stringConcat=BC_SB -jar {}",
        team_number = team_number,
    )
