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
        "@rules_python//python/runfiles",
    ],
)
