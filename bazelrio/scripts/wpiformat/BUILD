load("@rules_python//python:defs.bzl", "py_binary")
load("@__bazelrio_wpiformat_pip_deps//:requirements.bzl", "requirement")

py_binary(
    name = "wpiformat",
    srcs = ["format.py"],
    main = "format.py",
    visibility = ["//visibility:public"],
    deps = [
        requirement("wpiformat"),
    ],
)
