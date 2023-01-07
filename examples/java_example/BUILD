load("@bazelrio//:defs.bzl", "robot_java_binary")

robot_java_binary(
    name = "robot",
    main_class = "frc.robot.Main",
    team_number = 1337,
    runtime_deps = [
        "//src/main/java/frc/robot",
    ],
)

alias(
    name = "glass",
    actual = "@bazelrio//libraries/tools/glass",
)

alias(
    name = "pathweaver",
    actual = "@bazelrio//libraries/tools/pathweaver",
)

alias(
    name = "robotbuilder",
    actual = "@bazelrio//libraries/tools/robotbuilder",
)

alias(
    name = "shuffleboard",
    actual = "@bazelrio//libraries/tools/shuffleboard"
)

alias(
    name = "smartdashboard",
    actual = "@bazelrio//libraries/tools/smartdashboard"
)
