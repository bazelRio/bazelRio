#pragma once

#include <frc/Encoder.h>
#include <frc/motorcontrol/PWMVictorSPX.h>
#include <frc/controller/PIDController.h>
#include <frc/simulation/EncoderSim.h>
#include <frc/simulation/FlywheelSim.h>
#include <frc2/command/SubsystemBase.h>

#include "src/subsystems/ports.hpp"

class Shooter : public frc2::SubsystemBase {
 public:
  Shooter();

  void Periodic() override;
  void SimulationPeriodic() override;

  void Stop();

  void SpinAtRpm(double rpm);

  double GetRpm();

 private:
  void Log();

  frc::PWMVictorSPX m_motor{kShooterMotorPort};
  frc::Encoder m_encoder{kShooterEncoderPortA, kShooterEncoderPortB};
  frc2::PIDController m_controller;

  frc::sim::EncoderSim m_encoderSim{m_encoder};
  frc::sim::FlywheelSim m_flywheelSim;
};
