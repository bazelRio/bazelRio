def robot_cc_binary(name, team_number, **kwargs):
    native.cc_binary(
        name = name,
        **kwargs
    )
    native.genrule(
        name = "{}.deploy".format(name),
        srcs = [":{}".format(name)],
        tools = ["@bazelrio//deploy"],
        outs = ["deploy"],
        executable = True,
        cmd = "echo '$(location @bazelrio//deploy)' --robot_binary '$(location {})' --team_number '{}' > $@".format(name, team_number),
    )

2
