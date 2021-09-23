#pragma once

#include <frc2/command/CommandBase.h>
#include <frc2/command/CommandHelper.h>

#include "src/subsystems/shooter.hpp"

class ShooterRpmCommand
    : public frc2::CommandHelper<frc2::CommandBase, ShooterRpmCommand> {
 public:
  ShooterRpmCommand(Shooter* shooter, double rpm);
  void Execute() override;
  bool IsFinished() override;
  void End(bool interrupted) override;

 private:
  Shooter* m_shooter;
  const double m_rpm;
};
