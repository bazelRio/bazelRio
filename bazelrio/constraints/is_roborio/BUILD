constraint_setting(
    name = "is_roborio",
    default_constraint_value = ":false",
)

constraint_value(
    name = "true",
    constraint_setting = ":is_roborio",
    visibility = ["//:__subpackages__"],
)

constraint_value(
    name = "false",
    constraint_setting = ":is_roborio",
)

config_setting(
    name = "roborio",
    constraint_values = [":true"],
    visibility = ["//visibility:public"],
)
