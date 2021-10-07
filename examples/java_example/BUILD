load("@bazelrio//:defs.bzl", "robot_java_binary")

robot_java_binary(
    name = "robot",
    srcs = [
        "src/Main.java",
        "src/Robot.java",
    ],
    team_number = 1337,
    deps = [
        "@bazelrio//libraries/java/wpilibj",
    ],
    main_class = "bazelrio.bazelrio.examples.java_example.Main",
)
