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
            "addr2line",
            "ar",
            "as",
            "c++",
            "c++filt",
            "cpp",
            "elfedit",
            "g++",
            "gcc",
            "gcc-7.3.0",
            "gcc-ar",
            "gcc-nm",
            "gcc-ranlib",
            "gcov",
            "gcov-dump",
            "gcov-tool",
            "gdb",
            "gfortran",
            "gprof",
            "ld",
            "ld.bfd",
            "nm",
            "objcopy",
            "objdump",
            "ranlib",
            "readelf",
            "run",
            "size",
            "strings",
            "strip",
        ]
    ]


    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "roborio_toolchain",
        host_system_name = "local",
        target_system_name = "roborio",
        target_cpu = "armv7",
        target_libc = "glibc-2.24",
        cc_target_os = "linux",
        compiler = "gcc-7.3.0",
        abi_version = "gcc-7.3.0",
        abi_libc_version = "glibc-2.24",
        tool_paths = tool_paths,
        builtin_sysroot = "external/__bazelrio_roborio_toolchain_{}/frc2021/roborio/arm-frc2021-linux-gnueabi".format(
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
                                ],
                            ),
                        ],
                    ),
                    flag_set(
                        actions = [
                            ACTION_NAMES.cpp_link_executable,
                        ],
                        flag_groups = [
                            flag_group(
                                flags = [
                                    "-lstdc++",
                                ],
                            ),
                        ],
                    ),
                ],
            )
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
