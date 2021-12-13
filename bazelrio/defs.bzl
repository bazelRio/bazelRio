load("//dependencies/scripts:deps.bzl", "setup_scripts_dependencies")

def __prepare_halsim(halsim_deps):
    extension_names = []
    for dep in halsim_deps:
        lbl = Label(dep)
        extension_names.append(lbl.name)

    return extension_names

def _get_dynamic_dependencies_impl(ctx):
    shared_lib_native_deps = []

    if CcInfo in ctx.attr.target:
        for linker_input in ctx.attr.target[CcInfo].linking_context.linker_inputs.to_list():
            for library in linker_input.libraries:
                if library.dynamic_library and not library.static_library:
                    shared_lib_native_deps.append(library.dynamic_library)
    if JavaInfo in ctx.attr.target:
        for library in ctx.attr.target[JavaInfo].transitive_native_libraries.to_list():
            if library.dynamic_library and not library.static_library:
                shared_lib_native_deps.append(library.dynamic_library)

    return [DefaultInfo(files = depset(shared_lib_native_deps))]

_get_dynamic_dependencies = rule(
    attrs = {
        "target": attr.label(
            mandatory = True,
        ),
    },
    implementation = _get_dynamic_dependencies_impl,
)

def _deploy_command(name, bin_name, lib_name, team_number, robot_command):
    discover_dynamic_deps_task_name = lib_name + ".discover_dynamic_deps"
    _get_dynamic_dependencies(
        name = discover_dynamic_deps_task_name,
        target = lib_name,
    )

    native.java_binary(
        name = name,
        runtime_deps = ["@bazelrio//scripts/deploy"],
        main_class = "org.bazelrio.deploy.Deploy",
        args = [
            "--robot_binary",
            "$(location {})".format(bin_name),
            "--robot_command",
            "'{}'".format(robot_command),
            "--team_number",
            str(team_number),
            "--dynamic_libraries",
            "$(locations {})".format(discover_dynamic_deps_task_name),
        ],
        # Under Java, lib_name also needs to be included in the runfiles for native libraries to be readable
        data = [bin_name, lib_name, discover_dynamic_deps_task_name],
        target_compatible_with = [
            "@bazelrio//constraints/is_roborio:true",
        ],
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

    _deploy_command(
        name = name + ".deploy",
        bin_name = name,
        lib_name = name + ".lib",
        team_number = team_number,
        robot_command = "{}",
    )

def robot_java_binary(name, team_number, **kwargs):
    native.java_binary(
        name = name,
        **kwargs
    )

    # TODO: add simulation

    _deploy_command(
        name = name + ".deploy",
        bin_name = name + "_deploy.jar",
        lib_name = name,
        team_number = team_number,
        robot_command = "/usr/local/frc/JRE/bin/java -XX:+UseConcMarkSweepGC -Djava.library.path=/usr/local/frc/third-party/lib -Djava.lang.invoke.stringConcat=BC_SB -jar {}",
    )

def setup_bazelrio():
    setup_scripts_dependencies()

    native.register_toolchains(
        "@bazelrio//toolchains/roborio:macos",
        "@bazelrio//toolchains/roborio:linux",
        "@bazelrio//toolchains/roborio:windows",
        "@bazelrio//toolchains/jdk:macos",
        "@bazelrio//toolchains/jdk:linux",
        "@bazelrio//toolchains/jdk:windows",
    )
