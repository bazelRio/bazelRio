#pragma once

#include <frc2/command/CommandHelper.h>
#include <frc2/command/PIDCommand.h>

#include "src/subsystems/elevator.hpp"

class SetElevatorSetpoint
    : public frc2::CommandHelper<frc2::PIDCommand, SetElevatorSetpoint> {
 public:
  explicit SetElevatorSetpoint(Elevator* elevator, units::meter_t setpoint);
  void End(bool interrupted) override;

 private:
  double m_setpoint;
  Elevator* m_elevator;
};
