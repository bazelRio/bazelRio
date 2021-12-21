load("//dependencies/scripts:deps.bzl", "setup_scripts_dependencies")

def __prepare_halsim(halsim_deps):
    extension_names = []
    for dep in halsim_deps:
        lbl = Label(dep)
        extension_names.append(lbl.name)

    return extension_names

def _get_dynamic_deps(target):
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

def _get_dynamic_dependencies_impl(ctx):
    shared_lib_native_deps = _get_dynamic_deps(ctx.attr.target)

    return [DefaultInfo(files = depset(shared_lib_native_deps))]

_get_dynamic_dependencies = rule(
    attrs = {
        "target": attr.label(
            mandatory = True,
        ),
    },
    implementation = _get_dynamic_dependencies_impl,
)

def _symlink_java_native_libraries_impl(ctx):
    shared_lib_native_deps = []
    for dep in ctx.attr.deps:
        shared_lib_native_deps += _get_dynamic_deps(dep)

    symlinks = []
    for lib in shared_lib_native_deps:
        out = ctx.actions.declare_file(ctx.attr.output_directory + "/" + lib.basename)
        ctx.actions.symlink(output = out, target_file = lib)
        symlinks.append(out)

    return [DefaultInfo(files = depset(symlinks), runfiles = ctx.runfiles(files = symlinks))]

_symlink_java_native_libraries = rule(
    attrs = {
        "deps": attr.label_list(mandatory = True),
        "output_directory": attr.string(mandatory = True),
    },
    implementation = _symlink_java_native_libraries_impl,
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

def robot_java_binary(name, team_number, deps = [], runtime_deps = [], data = [], halsim_deps = [], **kwargs):
    # We must have the shared libraries live next to the binary
    native_shared_libraries_symlink = name + ".symlink_native"
    _symlink_java_native_libraries(
        name = native_shared_libraries_symlink,
        deps = deps + runtime_deps + halsim_deps,
        output_directory = select({
            "@bazel_tools//src/conditions:windows": name + ".exe.runfiles",
            "//conditions:default": name + ".runfiles/__main__",
        }),
    )

    extension_names = __prepare_halsim(halsim_deps)
    env = select({
        "@bazel_tools//src/conditions:windows": {"HALSIM_EXTENSIONS": ";".join(extension_names)},
        "//conditions:default": {"HALSIM_EXTENSIONS": ":".join(extension_names), "LD_LIBRARY_PATH": "."},
    })

    native.java_binary(
        name = name,
        deps = deps,
        runtime_deps = runtime_deps,
        data = data + select({
            "@bazelrio//constraints/is_roborio:roborio": [],
            "//conditions:default": [native_shared_libraries_symlink],
        }),
        env = env,
        jvm_flags = [
            "-Djava.library.path=.",
        ],
        **kwargs
    )

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
