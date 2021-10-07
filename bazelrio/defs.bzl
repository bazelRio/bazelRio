def deploy_binary(name, binary, team_number, robot_command):
    native.genrule(
        name = "{}.deploy".format(name),
        srcs = [":{}".format(binary)],
        tools = ["@bazelrio//deploy"],
        outs = ["deploy"],
        executable = True,
        cmd = "echo '$(location @bazelrio//deploy)' --robot_binary \\'$(location {})\\' --team_number \\'{}\\' --robot_command \\'{}\\' > $@".format(binary, team_number, robot_command),
    )


def robot_cc_binary(name, team_number, **kwargs):
    native.cc_binary(
        name = name,
        **kwargs
    )
    deploy_binary(
        name = name,
        binary = name,
        team_number = team_number,
        robot_command = "{}",
    )


def robot_java_binary(name, team_number, **kwargs):
    native.java_binary(
        name = name,
        **kwargs,
    )
    deploy_binary(
        name,
        binary = "{}_deploy.jar".format(name),
        team_number = team_number,
        robot_command = "/usr/local/frc/JRE/bin/java -jar {}",
    )
