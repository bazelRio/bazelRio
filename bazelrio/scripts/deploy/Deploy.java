package org.bazelrio.deploy;

import com.google.devtools.build.runfiles.Runfiles;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
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
  public CommandFailedException(String message) { super(message); }
}

class Deploy {
  public static void main(String[] args) throws IOException {
    System.out.println("Starting deploy");

    ArgumentParser parser =
        ArgumentParsers.newFor("deploy").build().description(
            "Deploy code to a roboRIO");
    parser.addArgument("--robot_binary")
        .type(String.class)
        .help("the executable binary to deploy")
        .required(true);
    parser.addArgument("--robot_command")
        .type(String.class)
        .help(
            "the script to run the robot binary (deployed to /home/lvuser/robotCommand)")
        .setDefault("{}");
    parser.addArgument("--team_number")
        .type(Integer.class)
        .help("the team number, used for the roboRIO addresses")
        .required(true);
    parser.addArgument("--verbose")
        .action(Arguments.storeTrue())
        .setDefault(false);
    parser.addArgument("--dynamic_libraries")
        .type(String.class)
        .nargs("*")
        .help("the .so libraries which the executable requires")
        .setDefault();
    parser.addArgument("--skip_dynamic_libraries")
        .action(Arguments.storeTrue())
        .help(
            "don't deploy the dynamic libraries (warning: unsafe, might lead to unexpected issues)")
        .setDefault(false);

    Namespace parsedArgs = parser.parseArgsOrFail(args);

    Runfiles runfiles = Runfiles.create();

    File robotBinary = runfile(runfiles, parsedArgs.get("robot_binary"));
    String robotCommand = parsedArgs.get("robot_command");
    ArrayList<String> dynamicLibraryPaths = parsedArgs.get("dynamic_libraries");
    boolean verbose = parsedArgs.get("verbose");

    if (parsedArgs.get("skip_dynamic_libraries")) {
      if (verbose) {
        System.out.println("Skipping dynamic libraries");
      }
      dynamicLibraryPaths = new ArrayList<>();
    }

    String robotBinaryDestination =
        String.format("/home/lvuser/%s", robotBinary.getName());

    ProgressBar progressBar = new ProgressBarBuilder()
                                  .setTaskName("Deploying")
                                  .setInitialMax(dynamicLibraryPaths.size() + 1)
                                  .setStyle(ProgressBarStyle.ASCII)
                                  .setUpdateIntervalMillis(100)
                                  .build();
    progressBar.stepTo(0);

    SSHClient client = new SSHClient();
    client.addHostKeyVerifier(new NoopKeyVerifier());
    client.useCompression();

    if (!establishSession(client, parsedArgs.get("team_number"), verbose)) {
      System.err.println("Couldn't find a roboRIO");
      System.exit(-1);
    }

    SCPUploadClient scp = client.newSCPFileTransfer().newSCPUploadClient();

    // Stop and remove existing robot binary
    runCommand(
        client,
        ". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t",
        verbose);
    runCommand(client, String.format("rm -f %s", robotBinaryDestination),
               verbose);

    // Fix some files (required only once after roboRIO format)
    runCommand(
        client,
        "sed -i -e 's/\\\"exec /\\\"/' /usr/local/frc/bin/frcRunRobot.sh",
        verbose);
    runCommand(
        client,
        "sed -i -e 's/^StartupDLLs/;StartupDLLs/' /etc/natinst/share/ni-rt.ini",
        verbose);

    // Copy new robot binary
    progressBar.setExtraMessage(robotBinary.getName());
    scp.copy(new FileSystemFile(robotBinary), robotBinaryDestination);
    runCommand(client, String.format("chmod +x %s", robotBinaryDestination),
               verbose);
    runCommand(client,
               String.format("chown lvuser:ni %s", robotBinaryDestination),
               verbose);
    runCommand(
        client,
        String.format("setcap cap_sys_nice+eip %s", robotBinaryDestination),
        verbose);
    progressBar.step();

    // Write new robotCommand
    runCommand(
        client,
        String.format("echo %s > /home/lvuser/robotCommand",
                      robotCommand.replace("{}", robotBinaryDestination)),
        verbose);
    runCommand(client, "chmod +x /home/lvuser/robotCommand", verbose);
    runCommand(client, "chown lvuser:ni /home/lvuser/robotCommand", verbose);

    // Copy dynamic libraries
    for (String dynamicLibraryPath : dynamicLibraryPaths) {
      File dynamicLibrary = runfile(runfiles, dynamicLibraryPath);
      progressBar.setExtraMessage("Deploying " + dynamicLibrary.getName());
      String dynamicLibraryDestination = String.format(
          "/usr/local/frc/third-party/lib/%s", dynamicLibrary.getName());
      scp.copy(new FileSystemFile(dynamicLibrary), dynamicLibraryDestination);
      progressBar.step();
    }
    progressBar.close();

    // Restart robot code
    System.out.print("Restarting robot code... ");
    runCommand(client, "sync", verbose);
    runCommand(client, "ldconfig", verbose);
    runCommand(
        client,
        ". /etc/profile.d/natinst-path.sh; /usr/local/frc/bin/frcKillRobot.sh -t -r",
        verbose);
    System.out.println("Done.");
    System.out.print("Deploy completed!");
  }

  static File runfile(Runfiles runfiles, String location) {
    Path runfilePath = Path.of("__main__").resolve(location).normalize();
    ArrayList<String> pathParts = new ArrayList<>();
    runfilePath.iterator().forEachRemaining(
        part -> pathParts.add(part.toString()));
    return new File(runfiles.rlocation(String.join("/", pathParts)));
  }

  static void runCommand(SSHClient client, String commandString,
                         boolean verbose) throws IOException {
    if (verbose) {
      System.out.println(String.format("Running %s", commandString));
    }
    Command command = client.startSession().exec(commandString);
    command.join();
    int exitStatus = command.getExitStatus();
    if (exitStatus != 0) {
      throw new CommandFailedException(String.format(
          "Command %s exited with code %d", commandString, exitStatus));
    }
  }

  static boolean establishSession(SSHClient client, int teamNumber,
                                  boolean verbose) {
    String[] addresses = {
        String.format("roborio-%d-frc.local", teamNumber),
        String.format("10.%d.%d.2", teamNumber / 100, teamNumber % 100),
        "172.22.11.2",
        String.format("roborio-%d-frc", teamNumber),
        String.format("roborio-%d-frc.lan", teamNumber),
        String.format("roborio-%d-frc.frc-field.local", teamNumber),
    };

    ProgressBar progressBar = new ProgressBarBuilder()
                                  .setTaskName("roboRIO Search")
                                  .setInitialMax(addresses.length)
                                  .setStyle(ProgressBarStyle.ASCII)
                                  .setUpdateIntervalMillis(100)
                                  .build();
    progressBar.stepTo(0);

    for (String address : addresses) {
      try {
        progressBar.setExtraMessage(address);
        progressBar.step();
        if (verbose) {
          System.out.println(
              String.format("Attempting to connect to %s", address));
        }
        client.connect(address);
        client.authPassword("admin", "");

        progressBar.stepTo(addresses.length);
        progressBar.close();
        return true;
      } catch (IOException e) {
        if (verbose) {
          System.err.println(
              String.format("Error connecting to %s: %s", address, e));
        }
      }
    }

    progressBar.close();
    return false;
  }
}
