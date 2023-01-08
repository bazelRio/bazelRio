def executable_tool_launcher(name, base_repo_name, macos_app = None):
    macos_subpath = "osx/x86-64"
    if macos_app != None:
        macos_subpath += "/" + macos_app + "/Contents/MacOS"

    subpath = select({
        "@bazel_tools//src/conditions:windows": ["windows/x86-64"],
        "@bazel_tools//src/conditions:linux_x86_64": ["linux/x86-64"],
        "@bazel_tools//src/conditions:darwin": [macos_subpath],
    })

    exe_name = select({
        "@bazel_tools//src/conditions:windows": [name + ".exe"],
        "@bazel_tools//src/conditions:linux_x86_64": [name],
        "@bazel_tools//src/conditions:darwin": [name],
    })

    data = select({
        "@bazel_tools//src/conditions:windows": ["@" + base_repo_name + "_windowsx86-64//:all"],
        "@bazel_tools//src/conditions:linux_x86_64": ["@" + base_repo_name + "_linuxx86-64//:all"],
        "@bazel_tools//src/conditions:darwin": ["@" + base_repo_name + "_osxuniversal//:all"],
    })

    repo_name = select({
        "@bazel_tools//src/conditions:windows": [base_repo_name + "_windowsx86-64"],
        "@bazel_tools//src/conditions:linux_x86_64": [base_repo_name + "_linuxx86-64"],
        "@bazel_tools//src/conditions:darwin": [base_repo_name + "_osxuniversal"],
    })

    native.sh_binary(
        name = name,
        srcs = ["@bazelrio//libraries/tools:executable_launcher.sh"],
        data = data,
        args = repo_name + subpath + exe_name,
        deps = ["@bazel_tools//tools/bash/runfiles"],
        visibility = ["//visibility:public"],
    )

def java_tool_launcher(name, main_class, base_repo_name):
    native.java_binary(
        name = name,
        main_class = main_class,
        runtime_deps = select({
            "@bazel_tools//src/conditions:windows": ["@" + base_repo_name + "_winx64//jar"],
            "@bazel_tools//src/conditions:linux_x86_64": ["@" + base_repo_name + "_linuxx64//jar"],
            "@bazel_tools//src/conditions:darwin": ["@" + base_repo_name + "_macx64//jar"],
        }),
        visibility = ["//visibility:public"],
    )
