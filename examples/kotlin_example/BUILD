load("@bazelrio//:defs.bzl", "robot_java_binary")

robot_java_binary(
    name = "robot",
    halsim_deps = ["@bazelrio//libraries/cpp/wpilib/simulation/halsim_gui"],
    main_class = "frc.robot.Main",
    team_number = 1337,
    runtime_deps = [
        "//src/main/kotlin/frc/robot",
    ],
)
