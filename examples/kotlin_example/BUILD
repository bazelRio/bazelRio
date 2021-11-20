load("@io_bazel_rules_kotlin//kotlin:kotlin.bzl", "define_kt_toolchain")
load("@bazelrio//:defs.bzl", "robot_jvm_binary")

define_kt_toolchain(
    name = "kotlin_toolchain",
    api_version = "1.3",
    jvm_target = "11",
    language_version = "1.3",
)

robot_jvm_binary(
    name = "robot",
    main_class = "frc.robot.Main",
    team_number = 1337,
    runtime_deps = [
        "//src/main/kotlin/frc/robot",
    ],
)
