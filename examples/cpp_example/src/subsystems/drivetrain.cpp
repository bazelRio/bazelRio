#include "src/subsystems/drivetrain.hpp"

#include <frc/Joystick.h>
#include <frc/RobotController.h>
#include <frc/smartdashboard/SmartDashboard.h>
#include <units/length.h>

#include <numbers>

DriveTrain::DriveTrain()
    : m_gyro(frc::SPI::Port::kMXP),
      m_drivetrainSimulator(
          frc::sim::DifferentialDrivetrainSim::CreateKitbotSim(
              frc::sim::DifferentialDrivetrainSim::KitbotMotor::DualCIMPerSide,
              12.0, 6_in)) {
  // Circumference = diameter * pi. 360 tick simulated encoders.
  m_leftEncoder.SetDistancePerPulse(units::foot_t{4_in}.to<double>() *
                                    std::numbers::pi / 360.0);
  m_rightEncoder.SetDistancePerPulse(units::foot_t{4_in}.to<double>() *
                                    std::numbers::pi / 360.0);

  frc::SmartDashboard::PutData("Field", &m_field);

  SetName("DriveTrain");
  // Let's show everything on the LiveWindow
  AddChild("Front_Left Motor", &m_leftMotorA);
  AddChild("Rear Left Motor", &m_leftMotorB);
  AddChild("Front Right Motor", &m_rightMotorA);
  AddChild("Rear Right Motor", &m_rightMotorB);
  AddChild("Left Encoder", &m_leftEncoder);
  AddChild("Right Encoder", &m_rightEncoder);
  AddChild("Gyro", &m_gyro);
}

void DriveTrain::Log() {
  frc::SmartDashboard::PutNumber("Left Distance", m_leftEncoder.GetDistance());
  frc::SmartDashboard::PutNumber("Right Distance",
                                 m_rightEncoder.GetDistance());
  frc::SmartDashboard::PutNumber("Left Speed", m_leftEncoder.GetRate());
  frc::SmartDashboard::PutNumber("Right Speed", m_rightEncoder.GetRate());
  frc::SmartDashboard::PutNumber("Gyro", m_gyro.GetAngle());
}

void DriveTrain::ArcadeDrive(double throttle, double rotation) {
  m_robotDrive.ArcadeDrive(throttle, rotation);
}

double DriveTrain::GetHeading() { return m_gyro.GetAngle(); }

void DriveTrain::Reset() {
  m_gyro.Reset();
  m_leftEncoder.Reset();
  m_rightEncoder.Reset();
}

double DriveTrain::GetAverageDistance() {
  return (m_leftEncoder.GetDistance() + m_rightEncoder.GetDistance()) / 2.0;
}

void DriveTrain::UpdateOdometry() {
  m_odometry.Update(m_gyro.GetRotation2d(),
                    units::meter_t(m_leftEncoder.GetDistance()),
                    units::meter_t(m_rightEncoder.GetDistance()));
  m_field.SetRobotPose(m_odometry.GetPose());
}

void DriveTrain::Periodic() {
  UpdateOdometry();
  Log();
}

void DriveTrain::SimulationPeriodic() {
  // To update our simulation, we set motor voltage inputs, update the
  // simulation, and write the simulated positions and velocities to our
  // simulated encoder and gyro. We negate the right side so that positive
  // voltages make the right side move forward.
  m_drivetrainSimulator.SetInputs(units::volt_t{m_leftMotorA.Get()} *
                                      frc::RobotController::GetInputVoltage(),
                                  units::volt_t{-m_rightMotorA.Get()} *
                                      frc::RobotController::GetInputVoltage());
  m_drivetrainSimulator.Update(20_ms);

  m_leftEncoderSim.SetDistance(
      m_drivetrainSimulator.GetLeftPosition().to<double>());
  m_leftEncoderSim.SetRate(
      m_drivetrainSimulator.GetLeftVelocity().to<double>());
  m_rightEncoderSim.SetDistance(
      m_drivetrainSimulator.GetRightPosition().to<double>());
  m_rightEncoderSim.SetRate(
      m_drivetrainSimulator.GetRightVelocity().to<double>());
  m_gyroSim.SetAngle(-m_drivetrainSimulator.GetHeading().Degrees());
}
