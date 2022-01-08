#pragma once

#include <frc/ADXRS450_Gyro.h>
#include <frc/Encoder.h>
#include <frc/motorcontrol/PWMVictorSPX.h>
#include <frc/SpeedControllerGroup.h>
#include <frc/drive/DifferentialDrive.h>
#include <frc/kinematics/DifferentialDriveOdometry.h>
#include <frc/simulation/ADXRS450_GyroSim.h>
#include <frc/simulation/DifferentialDrivetrainSim.h>
#include <frc/simulation/EncoderSim.h>
#include <frc/simulation/SimDeviceSim.h>
#include <frc/smartdashboard/Field2d.h>
#include <frc2/command/SubsystemBase.h>

#include "src/subsystems/ports.hpp"

class DriveTrain : public frc2::SubsystemBase {
 public:
  DriveTrain();

  void ArcadeDrive(double throttle, double rotation);

  double GetHeading();

  void Reset();

  double GetAverageDistance();

  void UpdateOdometry();

  void Periodic() override;

  void SimulationPeriodic() override;

 private:
  void Log();

  frc::PWMVictorSPX m_leftMotorA{kDrivetrainMotorLeftAPort};
  frc::PWMVictorSPX m_leftMotorB{kDrivetrainMotorLeftBPort};
  frc::SpeedControllerGroup m_left{m_leftMotorA, m_leftMotorB};

  frc::PWMVictorSPX m_rightMotorA{kDrivetrainMotorRightAPort};
  frc::PWMVictorSPX m_rightMotorB{kDrivetrainMotorRightBPort};
  frc::SpeedControllerGroup m_right{m_rightMotorA, m_rightMotorB};

  frc::DifferentialDrive m_robotDrive{m_left, m_right};

  frc::Encoder m_leftEncoder{kDrivetrainEncoderLeftPortA,
                             kDrivetrainEncoderLeftPortB};
  frc::Encoder m_rightEncoder{kDrivetrainEncoderRightPortA,
                              kDrivetrainEncoderRightPortB};
  frc::ADXRS450_Gyro m_gyro;

  frc::DifferentialDriveOdometry m_odometry{m_gyro.GetRotation2d()};
  frc::Field2d m_field;

  // Simulation
  frc::sim::ADXRS450_GyroSim m_gyroSim{m_gyro};
  frc::sim::EncoderSim m_leftEncoderSim{m_leftEncoder};
  frc::sim::EncoderSim m_rightEncoderSim{m_rightEncoder};
  frc::sim::DifferentialDrivetrainSim m_drivetrainSimulator;
};
