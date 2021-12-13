load("@rules_python//python:defs.bzl", "py_binary")
load("@__bazelrio_deploy_pip_deps//:requirements.bzl", "requirement")

py_binary(
    name = "deploypy",
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

java_library(
    name = "deploy",
    srcs = ["Deploy.java"],
    deps = [
         "@maven//:com_hierynomus_sshj",
         "@maven//:me_tongfei_progressbar",
         "@maven//:net_sourceforge_argparse4j_argparse4j",
         "@maven//:org_slf4j_slf4j_nop",
    ],
    visibility = ["//visibility:public"],
)
