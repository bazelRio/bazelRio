<h1 align="center">
    <img src="https://avatars.githubusercontent.com/u/84363228?s=200&v=4" width="256">
    <br />
    BazelRIO
    <br />
    <img src="https://img.shields.io/badge/semver-0.1.2-blue">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg">
    <img src="https://github.com/bazelRio/bazelRio/actions/workflows/build-example.yaml/badge.svg">
</h1>

<p align="center">
  <b>
    A collection of <a href="https://bazel.build">bazel</a> utilities for FRC
  </b>
</p>

## Installation
You can include BazelRIO in your project like so:

```bazel
http_archive(
    name = "bazelrio",
    url = "https://github.com/bazelRio/bazelRio/archive/refs/tags/0.1.2.zip",
    sha256 = "9ca149f8c6eaab637ff712bca6aa7b2d6e12bb3d259ea4672f0a6238767b8d92",
    strip_prefix = "bazelRio-0.1.2/bazelrio",
)

load("@bazelrio//:deps.bzl", "setup_bazelrio_dependencies")

setup_bazelrio_dependencies()

register_toolchains("@bazelrio//toolchains/roborio")

load("@rules_python//python:pip.bzl", "pip_install")

pip_install(
    name = "__bazelrio_deploy_pip_deps",
    requirements = "@bazelrio//scripts/deploy:requirements.txt",
)

pip_install(
    name = "__bazelrio_wpiformat_pip_deps",
    requirements = "@bazelrio//scripts/wpiformat:requirements.txt",
)
```

You **must** copy the `.bazelrc` file from the [C++](./examples/cpp_example) or [Java](./examples/java_example) example into your project workspace and update your `BUILD` and `WORKSPACE` files in the same fashion.

## Features
### Cross compilation
BazelRIO provides a RoboRIO target for easy cross-compilation.

```sh
bazel build <target> --platforms=@bazelrio//platforms/roborio
```

BazelRIO will automatically download an official roboRIO toolchain (from [WPILib](https://github.com/wpilibsuite/roborio-toolchain)) for your host OS and use it.

### Robot code rules
BazelRIO provides rules for robot code targets of multiple languages.

#### C++

```bazel
load("@bazelrio//:defs.bzl", "robot_cc_binary")

robot_cc_binary(
    name = "hello",
    team_number = 1337,
    srcs = ["hello.cpp"],
)
```

BazelRIO will create a `cc_binary` target named `hello`, as well as a special target named `hello.deploy` that can be used to deploy your binary:

```
bazel run //:hello.deploy --platforms=@bazelrio//platforms/roborio
...
Attempting to connect to roborio-1337-frc.local...
Connected to roborio-1337-frc.local.
Attempting to deploy bazel-out/darwin-fastbuild/bin/hello...
Deployed bazel-out/darwin-fastbuild/bin/hello. Exiting.
```

#### Java

```bazel
robot_java_binary(
    name = "hello",
    main_class = "frc.robot.Main",
    team_number = 1337,
    runtime_deps = [
        "//src/main/java/frc/robot",
    ],
)
```

BazelRIO will create a `java_binary` target named `hello`, as well as a special target named `hello.deploy` that can be used to deploy your binary.

### Libraries
BazelRIO containts library targets for WPILib and some vendor libraries:

- `@bazelrio//libraries/cpp/wpilib/wpilibc`
- `@bazelrio//libraries/java/wpilib/wpilibj`
- `@bazelrio//libraries/cpp/ctre/phoenix`
- `@bazelrio//libraries/cpp/rev/sparkmax`
- `@bazelrio//libraries/cpp/rev/colorsensor`
- `@bazelrio//libraries/cpp/kauailabs/navx`

## Simulations

Simulations (alongside halsim extensions) are supported! Take a look at the [C++ example](./examples/cpp_example) to get started.
