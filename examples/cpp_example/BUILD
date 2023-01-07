load("@bazelrio//:defs.bzl", "robot_cc_binary")

halsim_configs = {}

halsim_configs["gui"] = ["@bazelrio//libraries/cpp/wpilib/simulation/halsim_gui"]

halsim_configs["ds_socket"] = ["@bazelrio//libraries/cpp/wpilib/simulation/halsim_ds_socket"]

halsim_configs["ws_client"] = ["@bazelrio//libraries/cpp/wpilib/simulation/halsim_ws_client"]

halsim_configs["ws_server"] = ["@bazelrio//libraries/cpp/wpilib/simulation/halsim_ws_server"]

halsim_configs["combo"] = [
    "@bazelrio//libraries/cpp/wpilib/simulation/halsim_gui",
    "@bazelrio//libraries/cpp/wpilib/simulation/halsim_ws_server",
]

robot_cc_binary(
    name = "robot",
    srcs = [
        "src/robot.cpp",
        "src/robot.hpp",
    ],
    halsim_configs = halsim_configs,
    team_number = 1337,
    deps = [
        "//src/commands",
        "//src/subsystems",
        "@bazelrio//libraries/cpp/wpilib/cameraserver",
        # "@bazelrio//libraries/cpp/ctre/phoenix",
        # "@bazelrio//libraries/cpp/kauailabs/navx",
        # "@bazelrio//libraries/cpp/rev/revlib",
    ],
)
