#include "src/commands/shooter_rpm_command.hpp"

ShooterRpmCommand::ShooterRpmCommand(Shooter* shooter, double rpm)
    : m_shooter(shooter), m_rpm(rpm) {
  AddRequirements({m_shooter});
}

void ShooterRpmCommand::Execute() { m_shooter->SpinAtRpm(m_rpm); }
bool ShooterRpmCommand::IsFinished() { return false; }
void ShooterRpmCommand::End(bool interrupted) { m_shooter->Stop(); }
