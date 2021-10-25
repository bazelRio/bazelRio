# Bazelrio
Bazelrio is a collection of [bazel](http://bazel.build) utilities for FRC.

## Installation
You can include bazelrio in your project like so:

```
http_archive(
    name = "bazelrio",
    url = "https://github.com/connorworley/bazelrio/archive/b535eed1e18baab040a231fef8ad6e50e6983e9c.zip",
    sha256 = "b03137ddf16f518dfdadf73dff6f78523f5582b0442f6b13b1bee65e3cf0fd9a",
    strip_prefix = "bazelrio-b535eed1e18baab040a231fef8ad6e50e6983e9c/bazelrio",
)

load("@bazelrio//:deps.bzl", "setup_bazelrio_dependencies")

setup_bazelrio_dependencies()
register_toolchains("@bazelrio//toolchains/roborio")

load("@rules_python//python:pip.bzl", "pip_install")

pip_install(
    name = "__bazelrio_deploy_pip_deps",
    requirements = "@bazelrio//scripts/deploy:requirements.txt",
)
```

You **must** copy and edit the `.bazelrc` file in the `example/` directory into your project workspace.

## Features
### Cross compilation
Bazelrio provides a RoboRIO target for easy cross-compilation.

```
bazel build <target> --platforms=@bazelrio//platforms/roborio
```

Bazelrio will automatically download an official RoboRIO toolchain for your host OS and use it.

### Robot code rules
Bazelrio provides rules for robot code targets. You can specify a robot code target like so:

```
load("@bazelrio//:defs.bzl", "robot_cc_binary")

robot_cc_binary(
    name = "hello",
    team_number = 1337,
    srcs = ["hello.cpp"],
)
```

Bazelrio will create a `cc_binary` target named `hello`, as well as a special target named `hello.deploy` that can be used to deploy your binary:

```
bazel run //:hello.deploy --platforms=@bazelrio//platforms/roborio
...
Attempting to connect to roborio-1337-frc.local...
Connected to roborio-1337-frc.local.
Attempting to deploy bazel-out/darwin-fastbuild/bin/hello...
Deployed bazel-out/darwin-fastbuild/bin/hello. Exiting.
```

### Library targets
Bazelrio containts library targets for WPILib and (in the future) some vendor libraries. For example, you can dep `@bazelrio//libraries/wpilibc` to include WPILib in your project.
