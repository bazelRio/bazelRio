load("@bazelrio//:defs.bzl", "robot_cc_binary")

robot_cc_binary(
    name = "robot",
    srcs = [
        "src/robot.cpp",
        "src/robot.hpp",
    ] + glob([
        "src/subsystems/*.cpp",
        "src/subsystems/*.hpp",
        "src/commands/*.cpp",
        "src/commands/*.hpp",
    ]),
    team_number = 1337,
    deps = [
        "@bazelrio//libraries/wpilib/commands",
        "@bazelrio//libraries/wpilibc",
    ],
)
