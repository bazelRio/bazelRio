// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.commands;

import edu.wpi.first.wpilibj2.command.PIDCommand;
import frc.robot.subsystems.Elevator;
import edu.wpi.first.wpilibj2.command.CommandBase;

class SetElevatorSetpointCommand(elevator: Elevator, setpoint: Double) : PIDCommand(
  elevator.getController(),
  { elevator.getMeasurement() },
  setpoint,
  { output -> elevator.useOutput(output, setpoint) },
  elevator) {
  private val m_elevator = elevator;

  override fun isFinished(): Boolean {
    return m_elevator.getController().atSetpoint();
  }
}
