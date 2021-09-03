# Bazelrio
Bazelrio is a collection of [bazel](http://bazel.build) utilities for FRC.

## Installation
You can include bazelrio in your project like so:

```
http_archive(
    name = "bazelrio",
    urls = ["<todo>"],
    sha256 = "<todo>",
    strip_prefix = "<todo>",
)

load("@bazelrio//:deps.bzl", "setup_bazelrio_dependencies")

setup_bazelrio_dependencies()
register_toolchains("@bazelrio//toolchains/roborio")
```

You **must** copy and edit the `.bazelrc` file in the `example/` directory into your project workspace.

## Features
### Cross compilation
Bazelrio provides a RoboRIO target for easy cross-compilation.

```
bazel build <target> --platforms=@bazelrio//platforms/roborio
```

Bazelrio will automatically download an official RoboRIO toolchain for your host OS and use it.
