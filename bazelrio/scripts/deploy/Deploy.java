package org.bazelrio.deploy;

import java.io.File;
import java.io.IOException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.List;

import me.tongfei.progressbar.ProgressBar;
import me.tongfei.progressbar.ProgressBarBuilder;
import me.tongfei.progressbar.ProgressBarStyle;

import net.schmizz.sshj.SSHClient;
import net.schmizz.sshj.connection.channel.direct.Session;
import net.schmizz.sshj.connection.channel.direct.Session.Command;
import net.schmizz.sshj.transport.verification.HostKeyVerifier;
import net.schmizz.sshj.xfer.FileSystemFile;
import net.schmizz.sshj.xfer.scp.SCPUploadClient;

import net.sourceforge.argparse4j.ArgumentParsers;
import net.sourceforge.argparse4j.impl.Arguments;
import net.sourceforge.argparse4j.inf.ArgumentParser;
import net.sourceforge.argparse4j.inf.Namespace;

class NoopKeyVerifier implements HostKeyVerifier {
    public List<String> findExistingAlgorithms(String _hostname, int _port) {
        return new ArrayList<>();
    }

    public boolean verify(String _hostname, int _port, PublicKey _key) {
        return true;
    }
}

class CommandFailedException extends IOException {
    public CommandFailedException(String message) {
        super(message);
    }
}

class Deploy {
    public static void main(String[] args) throws IOException {
        ArgumentParser parser = ArgumentParsers.newFor("deploy").build()
            .description("Deploy code to a roboRIO");
        parser.addArgument("--robot_binary")
            .type(Arguments.fileType())
            .required(true);
        parser.addArgument("--robot_command")
            .type(String.class)
            .setDefault("{}");
        parser.addArgument("--team_number")
            .type(Integer.class)
            .required(true);
        parser.addArgument("--verbose")
            .action(Arguments.storeTrue())
            .setDefault(false);
        parser.addArgument("--dynamic_libraries")
            .type(Arguments.fileType())
            .nargs("*")
            .setDefault();

        Namespace parsedArgs = parser.parseArgsOrFail(args);

        File robotBinary = parsedArgs.get("robot_binary");
        String robotCommand = parsedArgs.get("robot_command");
        ArrayList<File> dynamicLibraries = parsedArgs.get("dynamic_libraries");
        boolean verbose = parsedArgs.get("verbose");

        String robotBinaryDestination = String.format("/home/lvuser/%s", robotBinary.getName());

        ProgressBar progressBar = new ProgressBarBuilder()
            .setTaskName("Deploying")
            .setInitialMax(dynamicLibraries.size() + 1)
            .setStyle(ProgressBarStyle.ASCII)
            .setUpdateIntervalMillis(100)
            .build();
        progressBar.stepTo(0);

        SSHClient client = new SSHClient();
        client.addHostKeyVerifier(new NoopKeyVerifier());
        client.useCompression();

        establishSession(client, parsedArgs.get("team_number"), verbose);
        SCPUploadClient scp = client.newSCPFileTransfer().newSCPUploadClient();

        // Stop and remove existing robot binary
        runCommand(client, ". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t", verbose);
        runCommand(client, String.format("rm -f %s", robotBinaryDestination), verbose);

        // Copy new robot binary
        progressBar.setExtraMessage(robotBinary.getName());
        scp.copy(new FileSystemFile(robotBinary), robotBinaryDestination);
        runCommand(client, String.format("chmod +x %s", robotBinaryDestination), verbose);
        runCommand(client, String.format("chown lvuser:ni %s", robotBinaryDestination), verbose);
        runCommand(client, String.format("setcap cap_sys_nice+eip %s", robotBinaryDestination), verbose);
        progressBar.step();

        // Write new robotCommand
        runCommand(client, String.format("echo %s > /home/lvuser/robotCommand", robotCommand.replace("{}", robotBinaryDestination)), verbose);
        runCommand(client, "chmod +x /home/lvuser/robotCommand", verbose);
        runCommand(client, "chown lvuser:ni /home/lvuser/robotCommand", verbose);

        // Copy dynamic libraries
        for (File dynamicLibrary : dynamicLibraries) {
            progressBar.setExtraMessage(dynamicLibrary.getName());
            String dynamicLibraryDestination = String.format("/usr/local/frc/third-party/lib/%s", dynamicLibrary.getName());
            scp.copy(new FileSystemFile(dynamicLibrary), dynamicLibraryDestination);
            progressBar.step();
        }

        // Restart robot code
        runCommand(client, "sync", verbose);
        runCommand(client, "ldconfig", verbose);
        runCommand(client, ". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t -r", verbose);

    }

    static void runCommand(SSHClient client, String commandString, boolean verbose) throws IOException {
        if (verbose) {
            System.out.println(String.format("Running %s", commandString));
        }
        Command command = client.startSession().exec(commandString);
        command.join();
        int exitStatus = command.getExitStatus();
        if (exitStatus != 0) {
            throw new CommandFailedException(String.format("Command %s exited with code %d", commandString, exitStatus));
        }
    }

    static void establishSession(SSHClient client, int teamNumber, boolean verbose) {
        String[] addresses = {
            String.format("roborio-%d-frc.local", teamNumber),
            String.format("10.%d.%d.2", teamNumber / 100, teamNumber % 100),
            "172.22.11.2",
            String.format("roborio-%d-frc", teamNumber),
            String.format("roborio-%d-frc.lan", teamNumber),
            String.format("roborio-%d-frc.frc-field.local", teamNumber),
        };
        for (String address : addresses) {
            try {
                if (verbose) {
                    System.out.println(String.format("Attempting to connect to %s", address));
                }
                client.connect(address);
                client.authPassword("admin", "");
                return;
            } catch (IOException e) {
                if (verbose) {
                    System.err.println(String.format("Error connecting to %s: %s", address, e));
                }
            }
        }
        // TODO: throw
    }
}
