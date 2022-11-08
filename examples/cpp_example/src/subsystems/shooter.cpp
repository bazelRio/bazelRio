#include "src/subsystems/shooter.hpp"

#include <frc/smartdashboard/SmartDashboard.h>

namespace {
constexpr double kP = 0.01;
constexpr double kI = 0.0;
constexpr double kD = 0.0;
constexpr double kF = 12.0 / 4700;

constexpr frc::DCMotor kGearbox = frc::DCMotor::Vex775Pro(2);
constexpr double kGearing = 4;
constexpr units::kilogram_square_meter_t kInertia{0.008};
}  // namespace

Shooter::Shooter()
    : m_controller(kP, kI, kD), m_flywheelSim(kGearbox, kGearing, kInertia) {}

void Shooter::Stop() { m_motor.Set(0); }

void Shooter::SpinAtRpm(double rpm) {
  double pidVoltage = m_controller.Calculate(m_encoder.GetRate(), rpm);
  double voltage = pidVoltage + rpm * kF;
  m_motor.SetVoltage(units::volt_t(voltage));
}
double Shooter::GetRpm() { return m_encoder.GetRate(); }

void Shooter::Periodic() { Log(); }

void Shooter::SimulationPeriodic() {
  m_flywheelSim.SetInput(Eigen::Vector<double, 1>(
      m_motor.Get() * frc::RobotController::GetInputVoltage()));

  m_flywheelSim.Update(20_ms);
  using rpm_t = units::revolutions_per_minute_t;
  m_encoderSim.SetRate(
      static_cast<rpm_t>(m_flywheelSim.GetAngularVelocity()).to<double>());
}

void Shooter::Log() {
  frc::SmartDashboard::PutNumber("Shooter Speed", m_motor.Get());
  frc::SmartDashboard::PutNumber("Shooter RPM", GetRpm());
}
