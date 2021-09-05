load("@bazelrio//:defs.bzl", "robot_cc_binary")

robot_cc_binary(
    name = "robot",
    team_number = 1337,
    srcs = [
         "src/robot.cpp",
         "src/robot.hpp",
    ],
    deps = ["@bazelrio//libraries/wpilibc"],
)
