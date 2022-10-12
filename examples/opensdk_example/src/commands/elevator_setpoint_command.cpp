#include "src/commands/elevator_setpoint_command.hpp"

#include <cmath>

SetElevatorSetpoint::SetElevatorSetpoint(Elevator& elevator,
                                         units::meter_t setpoint)
    : frc2::CommandHelper<frc2::PIDCommand, SetElevatorSetpoint>(
          elevator.GetController(),
          [&elevator] { return elevator.GetMeasurement(); },
          setpoint.to<double>(),
          [&elevator, setpoint](double output) {
            elevator.UseOutput(output, setpoint.to<double>());
          },
          {&elevator}),
      m_elevator(elevator) {
}

void SetElevatorSetpoint::End(bool interrupted) { m_elevator.Stop(); }
