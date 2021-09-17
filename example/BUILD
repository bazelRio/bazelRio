load("@bazelrio//:defs.bzl", "robot_cc_binary")

robot_cc_binary(
    name = "robot",
    srcs = [
        "src/robot.cpp",
        "src/robot.hpp",
    ],
    team_number = 1337,
    deps = ["@bazelrio//libraries/wpilibc"],
)
