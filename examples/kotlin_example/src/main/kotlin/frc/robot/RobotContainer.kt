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
class RobotContainer {
  // The robot's subsystems and commands are defined here...
  private val m_drivetrain = DriveTrain();
  private val m_elevator = Elevator();
  private val m_shooter = Shooter();

  private val m_joystick =  Joystick(0);

  /** The container for the robot. Contains subsystems, OI devices, and commands. */
  init {

    // Assign default commands
    m_drivetrain.setDefaultCommand(
        JoystickDriveCommand(m_drivetrain, m_joystick));

    // Configure the button bindings
    configureButtonBindings();
  }

  /**
   * Use this method to define your button->command mappings. Buttons can be created by
   * instantiating a {@link GenericHID} or one of its subclasses ({@link
   * edu.wpi.first.wpilibj.Joystick} or {@link XboxController}), and then passing it to a {@link
   * edu.wpi.first.wpilibj2.command.button.JoystickButton}.
   */
  private fun configureButtonBindings() {
    // Create some buttons
    val shootFastButton = JoystickButton(m_joystick, 1);
    val shootSlowButton = JoystickButton(m_joystick, 2);
    val elevatorLowButton = JoystickButton(m_joystick, 3);
    val elevatorMidButton = JoystickButton(m_joystick, 4);
    val elevatorHighButton = JoystickButton(m_joystick, 5);

    // Connect the buttons to commands
    shootFastButton.whileHeld(ShooterRpmCommand(m_shooter, 1500.0));
    shootSlowButton.whileHeld(ShooterRpmCommand(m_shooter, 1000.0));

    elevatorLowButton.whileHeld(SetElevatorSetpointCommand(m_elevator, Units.inchesToMeters(10.0)));
    elevatorMidButton.whileHeld(SetElevatorSetpointCommand(m_elevator, Units.inchesToMeters(20.0)));
    elevatorHighButton.whileHeld(SetElevatorSetpointCommand(m_elevator, Units.inchesToMeters(30.0)));
  }

  /**
   * Use this to pass the autonomous command to the main {@link Robot} class.
   *
   * @return the command to run in autonomous
   */
  fun getAutonomousCommand(): Command? {
    return null;
  }
}
