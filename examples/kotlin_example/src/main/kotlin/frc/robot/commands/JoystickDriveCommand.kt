// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.commands;

import edu.wpi.first.wpilibj.Joystick;
import frc.robot.subsystems.DriveTrain;
import edu.wpi.first.wpilibj2.command.CommandBase;
import java.util.function.DoubleSupplier;

/** Have the robot drive tank style. */
class JoystickDriveCommand(drivetrain: DriveTrain, joystick: Joystick) : CommandBase() {
  private val m_drivetrain = drivetrain;
  private val m_joystick = joystick;

  init {
    addRequirements(m_drivetrain);
  }

  // Called repeatedly when this Command is scheduled to run
  override fun execute() {
    m_drivetrain.arcadeDrive(-m_joystick.getY(), m_joystick.getX());
  }

  override fun isFinished(): Boolean {
    return false;
  }

  override fun end(interrupted: Boolean) {
    m_drivetrain.stop();
  }
}
