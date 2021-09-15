load("@rules_python//python:defs.bzl", "py_binary")
load("@__bazelrio_deploy_pip_deps//:requirements.bzl", "requirement")

py_binary(
    name = "deploy",
    srcs = ["deploy.py"],
    visibility = ["//visibility:public"],
    deps = [
        requirement("blessings"),
        requirement("paramiko"),
    ],
)
