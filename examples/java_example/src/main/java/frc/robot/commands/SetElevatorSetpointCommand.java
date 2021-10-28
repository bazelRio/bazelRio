// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.commands;

import edu.wpi.first.wpilibj2.command.PIDCommand;
import frc.robot.subsystems.Elevator;
import edu.wpi.first.wpilibj2.command.CommandBase;

public class SetElevatorSetpointCommand extends PIDCommand {
  private final Elevator m_elevator;

  public SetElevatorSetpointCommand(Elevator elevator, double setpoint) {
    super(elevator.getController(),
            () -> elevator.getMeasurement(),
            setpoint,
            (double output) -> elevator.useOutput(output, setpoint),
            elevator);
    m_elevator = elevator;
  }

  @Override
  public boolean isFinished() {
    return m_elevator.getController().atSetpoint();
  }
}
