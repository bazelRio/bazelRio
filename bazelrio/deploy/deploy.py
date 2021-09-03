import argparse
import sys
from os.path import basename

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


def deploy(argv):
    parser = argparse.ArgumentParser(description="Deploy code to a roboRIO")
    parser.add_argument("--robot_binary", type=argparse.FileType(mode="rb"), required=True)
    parser.add_argument("--team_number", type=int, required=True)
    parser.add_argument("--verbose", action="store_true", default=False)
    args = parser.parse_args(argv)

    client = establish_connection(args.team_number, args.verbose)

    print(term.bright_yellow(f"Attempting to deploy {args.robot_binary.name}..."))

    sftp_client = client.open_sftp()
    destination_path = f"/home/lvuser/{basename(args.robot_binary.name)}"
    sftp_client.putfo(args.robot_binary, destination_path)
    sftp_client.chmod(destination_path, 755)

    print(term.bright_green(f"Deployed {args.robot_binary.name}. Exiting."))


if __name__ == "__main__":
    deploy(sys.argv[1:])
