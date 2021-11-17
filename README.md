<h1 align="center">
    <img src="https://avatars.githubusercontent.com/u/84363228?s=200&v=4" width="256">
    <br />
    BazelRIO
    <br />
    <img src="https://img.shields.io/badge/semver-0.1.0-blue">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg">
    <img src="https://github.com/bazelRio/bazelRio/actions/workflows/build-example.yaml/badge.svg">
</h1>

<h4 align="center">
    A collection of <a href="http://bazel.build">bazel</a> utilities for FRC
</h4>

## Installation
You can include BazelRIO in your project like so:

```
http_archive(
    name = "bazelrio",
    url = "https://github.com/bazelRio/bazelRio/archive/4ba18926e3af806926acf54136f1ccff19804c60.zip",
    sha256 = "b00331671f6a90e1d5c1d3cedff0c5a914c1f3e574624110d76af67eab3d8681",
    strip_prefix = "bazelRio-4ba18926e3af806926acf54136f1ccff19804c60/bazelrio",
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

You **must** copy the `.bazelrc` file in the `example/` directory into your project workspace.

## Features
### Cross compilation
BazelRIO provides a RoboRIO target for easy cross-compilation.

```
bazel build <target> --platforms=@bazelrio//platforms/roborio
```

BazelRIO will automatically download an official roboRIO toolchain (from [WPILib](https://github.com/wpilibsuite/roborio-toolchain)) for your host OS and use it.

### Robot code rules
BazelRIO provides rules for robot code targets of multiple languages.

#### C++

```
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

```
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

Simulations (alongside halsim extensions) are supported! Take a look at the [C++ example](./examples/cpp-example) to get started.
