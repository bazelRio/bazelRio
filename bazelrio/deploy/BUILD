load("@rules_python//python:defs.bzl", "py_binary")
load("@__bazelrio_deploy_pip_deps//:requirements.bzl", "requirement")

py_binary(
    name = "deploy",
    srcs = ["deploy.py"],
    deps = [
        requirement("blessings"),
        requirement("paramiko"),
    ],
    visibility = ["//visibility:public"],
)
