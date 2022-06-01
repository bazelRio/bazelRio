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

def _deploy_command(name, bin_name, lib_name, dynamic_deps_name, team_number, robot_command):
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
            "$(locations {})".format(dynamic_deps_name),
        ],
        # Under Java, lib_name also needs to be included in the runfiles for native libraries to be readable
        data = [bin_name, lib_name, dynamic_deps_name],
        target_compatible_with = [
            "@bazelrio//constraints/is_roborio:true",
        ],
    )

def _complete_binary(name, incomplete_name, dynamic_deps_name):
    base_cmd = "cp $(location {}) $@".format(incomplete_name)
    native.genrule(
        name = name,
        srcs = [incomplete_name, dynamic_deps_name],
        outs = [name],
        cmd = select({
            "@bazel_tools//src/conditions:darwin": base_cmd + " && for DYLIB in $(locations {}); do install_name_tool -change $$(basename $$DYLIB) @rpath/$$(basename $$DYLIB) $@; done".format(dynamic_deps_name),
            "//conditions:default": base_cmd,
        }),
        executable = True,
    )

def robot_cc_binary(name, team_number, srcs = [], hdrs = [], deps = [], halsim_configs = None, **kwargs):
    lib_name = name + ".lib"
    native.cc_library(
        name = lib_name,
        deps = deps,
        srcs = srcs,
        hdrs = hdrs,
        **kwargs
    )

    incomplete_name = name + ".incomplete"
    native.cc_binary(
        name = incomplete_name,
        deps = [lib_name],
        **kwargs
    )

    if halsim_configs:
        for sim_name, halsim_deps in halsim_configs.items():
            extension_names = __prepare_halsim(halsim_deps)
            env = select({
                "@bazel_tools//src/conditions:windows": {"HALSIM_EXTENSIONS": ";".join(extension_names)},
                "//conditions:default": {"HALSIM_EXTENSIONS": ":".join(extension_names)},
            })

            sim_base_name = name + ".simulation." + sim_name
            sim_lib_name = sim_base_name + ".lib"
            native.cc_library(
                name = sim_lib_name,
                deps = [lib_name] + halsim_deps,
                **kwargs
            )

            sim_dynamic_deps_name = sim_base_name + ".dynamic_deps"
            _get_dynamic_dependencies(
                name = sim_dynamic_deps_name,
                target = sim_lib_name,
            )

            sim_incomplete_name = sim_base_name + ".incomplete"
            native.cc_binary(
                name = sim_incomplete_name,
                deps = [sim_lib_name],
                **kwargs
            )

            sim_complete_name = sim_base_name + ".complete"
            _complete_binary(
                name = sim_complete_name,
                incomplete_name = sim_incomplete_name,
                dynamic_deps_name = sim_dynamic_deps_name,
            )

            native.sh_binary(
                name = sim_base_name,
                srcs = [sim_complete_name],
                env = env,
            )

    dynamic_deps_name = name + ".dynamic_deps"
    _get_dynamic_dependencies(
        name = dynamic_deps_name,
        target = lib_name,
    )

    _complete_binary(
        name = name,
        incomplete_name = incomplete_name,
        dynamic_deps_name = dynamic_deps_name,
    )

    _deploy_command(
        name = name + ".deploy",
        bin_name = name,
        lib_name = lib_name,
        dynamic_deps_name = dynamic_deps_name,
        team_number = team_number,
        robot_command = "{}",
    )

def robot_java_binary(name, team_number, **kwargs):
    native.java_binary(
        name = name,
        **kwargs
    )

    dynamic_deps_name = name + ".dynamic_deps"
    _get_dynamic_dependencies(
        name = dynamic_deps_name,
        target = name,
    )

    # TODO: add simulation

    _deploy_command(
        name = name + ".deploy",
        bin_name = name + "_deploy.jar",
        lib_name = name,
        dynamic_deps_name = dynamic_deps_name,
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
