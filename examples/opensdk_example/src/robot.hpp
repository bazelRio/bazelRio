#pragma once

#include <frc/Joystick.h>
#include <frc/TimedRobot.h>

#include "src/subsystems/drivetrain.hpp"
#include "src/subsystems/elevator.hpp"
#include "src/subsystems/shooter.hpp"

class Robot : public frc::TimedRobot {
 public:
  void RobotInit() override;
  void RobotPeriodic() override;

 private:
  frc::Joystick m_joystick{0};

  Elevator m_elevator;
  DriveTrain m_drivetrain;
  Shooter m_shooter;
};
