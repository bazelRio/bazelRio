// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.commands;

import edu.wpi.first.wpilibj.Joystick;
import frc.robot.subsystems.DriveTrain;
import edu.wpi.first.wpilibj2.command.CommandBase;
import java.util.function.DoubleSupplier;

/** Have the robot drive tank style. */
public class JoystickDriveCommand extends CommandBase {
  private final DriveTrain m_drivetrain;
  private final Joystick m_joystick;

  public JoystickDriveCommand(DriveTrain drivetrain, Joystick joystick) {
    m_drivetrain = drivetrain;
    m_joystick = joystick;
    addRequirements(m_drivetrain);
  }

  // Called repeatedly when this Command is scheduled to run
  @Override
  public void execute() {
    m_drivetrain.arcadeDrive(-m_joystick.getY(), m_joystick.getX());
  }

  @Override
  public boolean isFinished() {
    return false;
  }

  @Override
  public void end(boolean interrupted) {
    m_drivetrain.stop();
  }
}
