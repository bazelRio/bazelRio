import argparse
import hashlib
import os
import sys
from os.path import basename

from alive_progress import alive_bar
from blessings import Terminal
from paramiko.client import MissingHostKeyPolicy, SSHClient

term = Terminal()

class SilentAllowPolicy(MissingHostKeyPolicy):
    def missing_host_key(self, client, hostname, key):
        return


def establish_connection(team_number, verbose):
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


def transfer_file(ssh_client, sftp_client, local_path, remote_path):
    with open(local_path, "rb") as local_fo:
        local_size = os.fstat(local_fo.fileno()).st_size

        try:
            remote_fo = sftp_client.open(remote_path)
            if remote_fo.stat().st_size == local_size:
                _, remote_hash_stdout_fo, _ = ssh_client.exec_command(f"md5sum {remote_path}")
                remote_hash = remote_hash_stdout_fo.read().split()[0].decode()
                local_hash = hashlib.md5(local_fo.read()).hexdigest()

                if remote_hash == local_hash:
                    print(f"{basename(local_path)} already exists on remote host")
                    return
        except IOError as e:
            pass

        with alive_bar(local_size, manual=True, title=basename(local_path), theme="classic") as bar:
            sftp_client.putfo(local_fo, remote_path, 0, lambda pos, _: bar(pos / local_size))


def deploy(argv):
    parser = argparse.ArgumentParser(description="Deploy code to a roboRIO")
    parser.add_argument("--robot_binary", type=argparse.FileType(mode="rb"), required=True)
    parser.add_argument("--team_number", type=int, required=True)
    parser.add_argument("--verbose", action="store_true", default=False)
    parser.add_argument("--dynamic_libraries", nargs='*')
    args = parser.parse_args(argv)

    client = establish_connection(args.team_number, args.verbose)

    print(term.bright_yellow(f"Attempting to deploy {args.robot_binary.name}..."))

    sftp_client = client.open_sftp()
    binary_name = basename(args.robot_binary.name)
    destination_path = f"/home/lvuser/{binary_name}"
    # https://github.com/wpilibsuite/GradleRIO/blob/aaf4da44e914a49e0bb956b028130481f538b31c/src/main/groovy/edu/wpi/first/gradlerio/frc/FRCNativeArtifact.groovy#L29
    client.exec_command(". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t")
    try:
        sftp_client.remove(destination_path)
    except FileNotFoundError:
        print(term.bright_white("Previous robot executable not found so not deleted."))
    transfer_file(client, sftp_client, args.robot_binary.name, destination_path)
    sftp_client.chmod(destination_path, 0o755)
    with sftp_client.open("/home/lvuser/robotCommand", "w") as f:
        f.write(f"LD_LIBRARY_PATH=/usr/local/frc/third-party/ '{destination_path}'\n")
    sftp_client.chmod("/home/lvuser/robotCommand", 0o755)
    sftp_client.chown(destination_path, 500, 500)
    sftp_client.chown("/home/lvuser/robotCommand", 500, 500)
    for dylib_path in args.dynamic_libraries:
        dylib_name = basename(dylib_path)
        transfer_file(client, sftp_client, dylib_path, f"/usr/local/frc/third-party/{dylib_name}")
    client.exec_command(f"setcap cap_sys_nice+eip '{destination_path}'")
    client.exec_command("sync")
    client.exec_command("ldconfig")
    client.exec_command(". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t -r")

    print(term.bright_green(f"Deployed {args.robot_binary.name}. Exiting."))


if __name__ == "__main__":
    deploy(sys.argv[1:])
