load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")
load(
    "@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
    "feature",
    "flag_group",
    "flag_set",
    "tool_path",
)

def _impl(ctx):
    tool_paths = [
        tool_path(
            name = name,
            path = "shims/{}/{}{}".format(
                ctx.attr.host_os,
                name,
                ctx.attr.script_suffix,
            ),
        )
        for name in [
            "ar",
            "cpp",
            "gcc",
            "gcov",
            "ld",
            "nm",
            "objdump",
            "strip",
        ]
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "roborio_toolchain",
        host_system_name = "local",
        target_system_name = "arm-frc2022-linux-gnueabi",
        target_cpu = "armv7",
        target_libc = "glibc-2.24",
        cc_target_os = "linux",
        compiler = "gcc-7.3.0",
        abi_version = "gcc-7.3.0",
        abi_libc_version = "glibc-2.24",
        tool_paths = tool_paths,
        builtin_sysroot = "external/__bazelrio_roborio_toolchain_{}/frc2022/roborio/arm-frc2022-linux-gnueabi".format(
            ctx.attr.host_os,
        ),
        features = [
            feature(
                name = "roborio_toolchain_feature",
                enabled = True,
                flag_sets = [
                    flag_set(
                        actions = [
                            ACTION_NAMES.c_compile,
                            ACTION_NAMES.cpp_compile,
                        ],
                        flag_groups = [
                            flag_group(
                                flags = [
                                    "-no-canonical-prefixes",
                                    "-std=c++17",
                                ],
                            ),
                        ],
                    ),
                    flag_set(
                        actions = [
                            ACTION_NAMES.cpp_link_executable,
                            ACTION_NAMES.cpp_link_dynamic_library,
                            ACTION_NAMES.cpp_link_nodeps_dynamic_library,
                        ],
                        flag_groups = [
                            flag_group(
                                flags = [
                                    "-lstdc++",
                                    "-lpthread",
                                    "-lm",
                                ],
                            ),
                        ],
                    ),
                ],
            ),
            feature(
                name = "compiler_param_file",
            ),
        ],
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {
        "host_os": attr.string(mandatory = True),
        "script_suffix": attr.string(default = "", mandatory = False),
    },
    provides = [CcToolchainConfigInfo],
)
