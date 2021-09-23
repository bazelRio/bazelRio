#include "src/commands/joystick_drive_command.hpp"

#include <utility>

JoystickDriveCommand::JoystickDriveCommand(frc::Joystick* joystick,
                                           DriveTrain* drivetrain)
    : m_joystick(joystick), m_drivetrain(drivetrain) {
  SetName("JoystickDriveCommand");
  AddRequirements({m_drivetrain});
}

void JoystickDriveCommand::Execute() {
  m_drivetrain->ArcadeDrive(-m_joystick->GetY(), m_joystick->GetX());
}

bool JoystickDriveCommand::IsFinished() { return false; }

void JoystickDriveCommand::End(bool) { m_drivetrain->ArcadeDrive(0, 0); }
