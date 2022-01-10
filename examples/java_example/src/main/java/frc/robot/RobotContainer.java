package frc.robot;

import edu.wpi.first.wpilibj.GenericHID;
import edu.wpi.first.wpilibj.Joystick;
import edu.wpi.first.wpilibj.XboxController;
import edu.wpi.first.math.util.Units;
import frc.robot.commands.SetElevatorSetpointCommand;
import frc.robot.commands.JoystickDriveCommand;
import frc.robot.commands.ShooterRpmCommand;
import frc.robot.subsystems.DriveTrain;
import frc.robot.subsystems.Elevator;
import frc.robot.subsystems.Shooter;
import edu.wpi.first.wpilibj2.command.Command;
import edu.wpi.first.wpilibj2.command.button.JoystickButton;

/**
 * This class is where the bulk of the robot should be declared. Since Command-based is a
 * "declarative" paradigm, very little robot logic should actually be handled in the {@link Robot}
 * periodic methods (other than the scheduler calls). Instead, the structure of the robot (including
 * subsystems, commands, and button mappings) should be declared here.
 */
public class RobotContainer {
  // The robot's subsystems and commands are defined here...
  private final DriveTrain m_drivetrain = new DriveTrain();
  private final Elevator m_elevator = new Elevator();
  private final Shooter m_shooter = new Shooter();

  private final Joystick m_joystick = new Joystick(0);

  /** The container for the robot. Contains subsystems, OI devices, and commands. */
  public RobotContainer() {

    // Assign default commands
    m_drivetrain.setDefaultCommand(
        new JoystickDriveCommand(m_drivetrain, m_joystick));

    // Configure the button bindings
    configureButtonBindings();
  }

  /**
   * Use this method to define your button->command mappings. Buttons can be created by
   * instantiating a {@link GenericHID} or one of its subclasses ({@link
   * edu.wpi.first.wpilibj.Joystick} or {@link XboxController}), and then passing it to a {@link
   * edu.wpi.first.wpilibj2.command.button.JoystickButton}.
   */
  private void configureButtonBindings() {
    // Create some buttons
    final JoystickButton shootFastButton = new JoystickButton(m_joystick, 1);
    final JoystickButton shootSlowButton = new JoystickButton(m_joystick, 2);
    final JoystickButton elevatorLowButton = new JoystickButton(m_joystick, 3);
    final JoystickButton elevatorMidButton = new JoystickButton(m_joystick, 4);
    final JoystickButton elevatorHighButton = new JoystickButton(m_joystick, 5);

    // Connect the buttons to commands
    shootFastButton.whileHeld(new ShooterRpmCommand(m_shooter, 1500));
    shootSlowButton.whileHeld(new ShooterRpmCommand(m_shooter, 1000));

    elevatorLowButton.whileHeld(new SetElevatorSetpointCommand(m_elevator, Units.inchesToMeters(10)));
    elevatorMidButton.whileHeld(new SetElevatorSetpointCommand(m_elevator, Units.inchesToMeters(20)));
    elevatorHighButton.whileHeld(new SetElevatorSetpointCommand(m_elevator, Units.inchesToMeters(30)));
  }

  /**
   * Use this to pass the autonomous command to the main {@link Robot} class.
   *
   * @return the command to run in autonomous
   */
  public Command getAutonomousCommand() {
    return null;
  }
}
