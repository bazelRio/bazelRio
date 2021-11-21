load("@io_bazel_rules_kotlin//kotlin:jvm.bzl", "kt_jvm_library")

kt_jvm_library(
    name = "commands",
    srcs = glob(["*.kt"]),
    visibility = ["//visibility:public"],
    deps = [
        "//src/main/kotlin/frc/robot/subsystems",
        "@bazelrio//libraries/java/wpilib/new_commands",
        "@bazelrio//libraries/java/wpilib/wpilibj",
    ],
)
