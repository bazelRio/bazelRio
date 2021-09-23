#pragma once

#include <frc/Joystick.h>
#include <frc2/command/CommandBase.h>
#include <frc2/command/CommandHelper.h>

#include "src/subsystems/drivetrain.hpp"

class JoystickDriveCommand
    : public frc2::CommandHelper<frc2::CommandBase, JoystickDriveCommand> {
 public:
  JoystickDriveCommand(frc::Joystick* joystick, DriveTrain* drivetrain);

  void Execute() override;
  bool IsFinished() override;
  void End(bool interrupted) override;

 private:
  frc::Joystick* m_joystick;
  DriveTrain* m_drivetrain;
};
