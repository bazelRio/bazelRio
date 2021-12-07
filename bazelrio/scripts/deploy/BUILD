load("@rules_python//python:defs.bzl", "py_binary")
load("@__bazelrio_deploy_pip_deps//:requirements.bzl", "requirement")

py_binary(
    name = "deploy",
    srcs = ["deploy.py"],
    visibility = ["//visibility:public"],
    deps = [
        requirement("alive-progress"),
        requirement("blessed"),
        requirement("paramiko"),
    ],
)

# Necessary for use in defs.bzl _deploy_command
exports_files(["deploy.py"])