import argparse
import hashlib
import os
import sys
from contextlib import contextmanager
from os.path import basename
from shlex import quote

from alive_progress import alive_bar
from blessed import Terminal
from paramiko.client import MissingHostKeyPolicy, SSHClient
from rules_python.python.runfiles import runfiles

DEPLOYED_FILE_PERMS = 0o755
DYLIB_DIR = "/usr/local/frc/third-party/lib/"
LVUSER_UID = 500
LVUSER_GID = 500
ROBOT_COMMAND_PATH = "/home/lvuser/robotCommand"

term = Terminal()

class SilentAllowPolicy(MissingHostKeyPolicy):
    def missing_host_key(self, client, hostname, key):
        return


def establish_connection(team_number, verbose):
    # addresses supplied from
    # https://github.com/wpilibsuite/GradleRIO/blob/aaf4da44e914a49e0bb956b028130481f538b31c/src/main/groovy/edu/wpi/first/gradlerio/frc/RoboRIO.groovy#L40
    addresses = [
        f"roborio-{team_number}-frc.local",
        f"10.{team_number // 100}.{team_number % 100}.2",
       "172.22.11.2",
        f"roborio-{team_number}-frc",
        f"roborio-{team_number}-frc.lan",
        f"roborio-{team_number}-frc.frc-field.local",
    ]

    client = SSHClient()
    client.set_missing_host_key_policy(SilentAllowPolicy)

    for address in addresses:
        print(term.bright_yellow(f"Attempting to connect to {address}..."))
        try:
            client.connect(
                address,
                username="admin",
                password="",
                look_for_keys=False,
                allow_agent=False,
                timeout=15,
            )
            print(term.bright_green(f"Connected to {address}."))
            return client
        except Exception as e:
            if verbose:
                print(e)
            print(term.bright_red("Connection failed."))
    print(term.bright_red("All attempts to connect to the roboRIO failed. Exiting."))
    sys.exit(1)


def transfer_file(ssh_client, sftp_client, local_fo, remote_path, verbose):
    local_size = os.fstat(local_fo.fileno()).st_size

    if verbose:
        print(f"checking {remote_path}")

    try:
        remote_fo = sftp_client.open(remote_path)
        remote_size = remote_fo.stat().st_size

        if verbose:
            print(f"local size: {local_size}, remote size: {remote_size}")

        if remote_size == local_size:
            local_hash = hashlib.md5(local_fo.read()).hexdigest()
            _, remote_hash_stdout_fo, _ = ssh_client.exec_command(f"md5sum {quote(remote_path)}")
            remote_hash = remote_hash_stdout_fo.read().split()[0].decode()

            if verbose:
                print(f"local hash: {local_hash}, remote hash: {remote_hash}")

            if remote_hash == local_hash:
                return
    except Exception as e:
        # could fail due to misisng file, misisng md5sum, etc.
        if verbose:
            print(e)
        pass

    if verbose:
        print(f"copying {local_fo.name} -> {remote_path}")

    sftp_client.putfo(local_fo, remote_path)


class WindowsProgressBar:
    def __init__(self, total):
        self.total = total
        self.current = 1

    def __call__(self):
        self.current += 1
        pass

    def text(self, msg):
        print(f"({self.current}/{self.total}) {msg}")


@contextmanager
def get_progress_bar(total):
    if os.name != "nt":
        with alive_bar(
            total,
            enrich_print=False,
            monitor=False,
            stats=False,
            theme="classic",
        ) as progress_bar:
            yield progress_bar
    else:
        yield WindowsProgressBar(total)


def deploy(argv):
    parser = argparse.ArgumentParser(description="Deploy code to a roboRIO")
    parser.add_argument("--robot_binary", type=str, required=True)
    parser.add_argument("--robot_command", type=str, default="{}")
    parser.add_argument("--team_number", type=int, required=True)
    parser.add_argument("--verbose", action="store_true", default=False)
    parser.add_argument("--dynamic_libraries", nargs='*', default=[])
    args = parser.parse_args(argv)

    with get_progress_bar(len(args.dynamic_libraries) + 1) as progress_bar:
        r = runfiles.Create()

        client = establish_connection(args.team_number, args.verbose)
        sftp_client = client.open_sftp()

        binary_name = basename(args.robot_binary)
        destination_path = f"/home/lvuser/{binary_name}"
        quoted_destination_path = quote(destination_path)

        print(term.bright_yellow(f"Attempting to deploy {binary_name}..."))

        # deploy process adapted from
        # https://github.com/wpilibsuite/GradleRIO/blob/aaf4da44e914a49e0bb956b028130481f538b31c/src/main/groovy/edu/wpi/first/gradlerio/frc/FRCNativeArtifact.groovy#L29

        # stop and remove existing robot binary
        client.exec_command(". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t")
        try:
            sftp_client.remove(destination_path)
        except FileNotFoundError as e:
            if args.verbose:
                print(e)

        # copy new robot binary
        progress_bar.text(binary_name)
        with open(r.Rlocation(os.path.join(__name__, args.robot_binary)), "rb") as robot_binary_fo:
            transfer_file(client, sftp_client, robot_binary_fo, destination_path, args.verbose)
        sftp_client.chmod(destination_path, DEPLOYED_FILE_PERMS)
        sftp_client.chown(destination_path, LVUSER_UID, LVUSER_GID)
        client.exec_command(f"setcap cap_sys_nice+eip {quoted_destination_path}")
        progress_bar()

        # write new robotCommand
        with sftp_client.open(ROBOT_COMMAND_PATH, "w") as fo:
            # we take a robotCommand format string as a argument to make it easier for different languages (ie java) to
            # describe how their binaries should be executed on the rio.
            # the remote location of the robot binary is substituted into the format string, and the whole thing is
            # wrapped in a bash command that sets -x before execing into the formatted string.
            # this is done as a convenience so that the user can see exactly what is running in FRC_UserProgram.log.
            inner_robot_command = args.robot_command.format(quoted_destination_path)
            bash_command = f"set -euxo pipefail; exec {inner_robot_command}"
            fo.write(f"bash -c {quote(bash_command)}\n")
        sftp_client.chmod(ROBOT_COMMAND_PATH, DEPLOYED_FILE_PERMS)
        sftp_client.chown(ROBOT_COMMAND_PATH, LVUSER_UID, LVUSER_GID)

        # copy shared libraries
        try:
            sftp_client.mkdir(DYLIB_DIR)
        except IOError as e:
            if args.verbose:
                print(e)
        for dylib_path in args.dynamic_libraries:
            dylib_name = basename(dylib_path)
            progress_bar.text(dylib_name)
            with open(r.Rlocation(os.path.join(__name__, dylib_path)), "rb") as dylib_fo:
                transfer_file(client, sftp_client, dylib_fo, f"{DYLIB_DIR}{dylib_name}", args.verbose)
            progress_bar()

        # restart robot code
        client.exec_command("sync")
        client.exec_command("ldconfig")
        client.exec_command(". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t -r")

        print(term.bright_green(f"Deployed {binary_name}. Exiting."))


if __name__ == "__main__":
    deploy(sys.argv[1:])
