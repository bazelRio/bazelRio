// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.subsystems;

import edu.wpi.first.wpilibj.ADXRS450_Gyro;
import edu.wpi.first.wpilibj.Encoder;
import edu.wpi.first.wpilibj.motorcontrol.PWMVictorSPX;
import edu.wpi.first.wpilibj.RobotBase;
import edu.wpi.first.wpilibj.RobotController;
import edu.wpi.first.wpilibj.SpeedController;
import edu.wpi.first.wpilibj.SpeedControllerGroup;
import edu.wpi.first.wpilibj.drive.DifferentialDrive;
import edu.wpi.first.math.kinematics.DifferentialDriveOdometry;
import edu.wpi.first.wpilibj.simulation.ADXRS450_GyroSim;
import edu.wpi.first.wpilibj.simulation.DifferentialDrivetrainSim;
import edu.wpi.first.wpilibj.simulation.EncoderSim;
import edu.wpi.first.wpilibj.smartdashboard.Field2d;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;
import edu.wpi.first.wpilibj2.command.SubsystemBase;

public class DriveTrain extends SubsystemBase {

  private final SpeedController m_leftMotor;
  private final SpeedController m_rightMotor;

  private final DifferentialDrive m_drive;

  private final Encoder m_leftEncoder;
  private final Encoder m_rightEncoder;
  private final ADXRS450_Gyro m_gyro;

  private final DifferentialDriveOdometry m_odometry;
  private final Field2d m_field;

  // Sim
  private ADXRS450_GyroSim m_gyroSim;
  private EncoderSim m_leftEncoderSim;
  private EncoderSim m_rightEncoderSim;
  private DifferentialDrivetrainSim m_drivetrainSimulator;

  public DriveTrain() {
    m_leftMotor =
            new SpeedControllerGroup(
                    new PWMVictorSPX(PortMap.kDrivetrainMotorLeftAPort),
                    new PWMVictorSPX(PortMap.kDrivetrainMotorLeftBPort));
    m_rightMotor =
            new SpeedControllerGroup(
                    new PWMVictorSPX(PortMap.kDrivetrainMotorRightAPort),
                    new PWMVictorSPX(PortMap.kDrivetrainMotorRightBPort));
    m_drive = new DifferentialDrive(m_leftMotor, m_rightMotor);

    m_leftEncoder = new Encoder(PortMap.kDrivetrainEncoderLeftPortA, PortMap.kDrivetrainEncoderLeftPortB);
    m_rightEncoder = new Encoder(PortMap.kDrivetrainEncoderRightPortA, PortMap.kDrivetrainEncoderRightPortB);
    m_gyro = new ADXRS450_Gyro();

    m_odometry = new DifferentialDriveOdometry(m_gyro.getRotation2d());
    m_field = new Field2d();

    m_leftEncoder.setDistancePerPulse((4.0 / 12.0 * Math.PI) / 360.0);
    m_rightEncoder.setDistancePerPulse((4.0 / 12.0 * Math.PI) / 360.0);

    SmartDashboard.putData("Field", m_field);

    if(RobotBase.isSimulation()) {
      m_gyroSim = new ADXRS450_GyroSim(m_gyro);
      m_leftEncoderSim = new EncoderSim(m_leftEncoder);
      m_rightEncoderSim = new EncoderSim(m_rightEncoder);
      m_drivetrainSimulator = DifferentialDrivetrainSim.createKitbotSim(
              DifferentialDrivetrainSim.KitbotMotor.kDualCIMPerSide,
              DifferentialDrivetrainSim.KitbotGearing.k12p75,
              DifferentialDrivetrainSim.KitbotWheelSize.SixInch,
              null);
    }
  }

  public void log() {
    SmartDashboard.putNumber("Left Distance", m_leftEncoder.getDistance());
    SmartDashboard.putNumber("Right Distance", m_rightEncoder.getDistance());
    SmartDashboard.putNumber("Left Speed", m_leftEncoder.getRate());
    SmartDashboard.putNumber("Right Speed", m_rightEncoder.getRate());
    SmartDashboard.putNumber("Gyro", m_gyro.getAngle());
  }

  public void arcadeDrive(double throttle, double rotation) {
    m_drive.arcadeDrive(throttle, rotation);
  }

  public double getHeading() {
    return m_gyro.getAngle();
  }

  /** Reset the robots sensors to the zero states. */
  public void reset() {
    m_gyro.reset();
    m_leftEncoder.reset();
    m_rightEncoder.reset();
  }

  public double getAverageDistance() {
    return (m_leftEncoder.getDistance() + m_rightEncoder.getDistance()) / 2;
  }

  void updateOdometry() {
    m_odometry.update(m_gyro.getRotation2d(), m_leftEncoder.getDistance(), m_rightEncoder.getDistance());
    m_field.setRobotPose(m_odometry.getPoseMeters());
  }

  @Override
  public void periodic() {
    updateOdometry();
    log();
  }

  @Override
  public void simulationPeriodic() {
    m_drivetrainSimulator.setInputs(
            m_leftMotor.get() * RobotController.getInputVoltage(),
            m_rightMotor.get() * RobotController.getInputVoltage());
    m_drivetrainSimulator.update(0.02);

    m_leftEncoderSim.setDistance(
            m_drivetrainSimulator.getLeftPositionMeters());
    m_leftEncoderSim.setRate(
            m_drivetrainSimulator.getLeftVelocityMetersPerSecond());
    m_rightEncoderSim.setDistance(
            m_drivetrainSimulator.getRightPositionMeters());
    m_rightEncoderSim.setRate(
            m_drivetrainSimulator.getRightVelocityMetersPerSecond());
    m_gyroSim.setAngle(-m_drivetrainSimulator.getHeading().getDegrees());
  }

  public void stop() {
    m_leftMotor.set(0);
    m_rightMotor.set(0);
  }
}
