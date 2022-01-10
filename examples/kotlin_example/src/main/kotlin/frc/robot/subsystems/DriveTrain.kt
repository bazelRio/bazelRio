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

class DriveTrain : SubsystemBase() {

  private val m_leftMotor = SpeedControllerGroup(
      PWMVictorSPX(PortMap.kDrivetrainMotorLeftAPort),
      PWMVictorSPX(PortMap.kDrivetrainMotorLeftBPort));
  private val m_rightMotor = SpeedControllerGroup(
      PWMVictorSPX(PortMap.kDrivetrainMotorRightAPort),
      PWMVictorSPX(PortMap.kDrivetrainMotorRightBPort));

  private val m_drive = DifferentialDrive(m_leftMotor, m_rightMotor);

  private val m_leftEncoder = Encoder(
      PortMap.kDrivetrainEncoderLeftPortA,
      PortMap.kDrivetrainEncoderLeftPortB);
  private val m_rightEncoder = Encoder(
      PortMap.kDrivetrainEncoderRightPortA,
      PortMap.kDrivetrainEncoderRightPortB);
  private val m_gyro = ADXRS450_Gyro();

  private val m_odometry = DifferentialDriveOdometry(m_gyro.getRotation2d());
  private val m_field = Field2d();

  // Sim
  private var m_gyroSim: ADXRS450_GyroSim? = null;
  private var m_leftEncoderSim: EncoderSim? = null;
  private var m_rightEncoderSim: EncoderSim? = null;
  private var m_drivetrainSimulator: DifferentialDrivetrainSim? = null;

  init {
    m_leftEncoder.setDistancePerPulse((4.0 / 12.0 * Math.PI) / 360.0);
    m_rightEncoder.setDistancePerPulse((4.0 / 12.0 * Math.PI) / 360.0);

    SmartDashboard.putData("Field", m_field);

    if(RobotBase.isSimulation()) {
      m_gyroSim = ADXRS450_GyroSim(m_gyro);
      m_leftEncoderSim = EncoderSim(m_leftEncoder);
      m_rightEncoderSim = EncoderSim(m_rightEncoder);
      m_drivetrainSimulator = DifferentialDrivetrainSim.createKitbotSim(
              DifferentialDrivetrainSim.KitbotMotor.kDualCIMPerSide,
              DifferentialDrivetrainSim.KitbotGearing.k12p75,
              DifferentialDrivetrainSim.KitbotWheelSize.SixInch,
              null);
    }
  }

  fun log() {
    SmartDashboard.putNumber("Left Distance", m_leftEncoder.getDistance());
    SmartDashboard.putNumber("Right Distance", m_rightEncoder.getDistance());
    SmartDashboard.putNumber("Left Speed", m_leftEncoder.getRate());
    SmartDashboard.putNumber("Right Speed", m_rightEncoder.getRate());
    SmartDashboard.putNumber("Gyro", m_gyro.getAngle());
  }

  fun arcadeDrive(throttle: Double, rotation: Double) {
    m_drive.arcadeDrive(throttle, rotation);
  }

  fun getHeading(): Double {
    return m_gyro.getAngle();
  }

  /** Reset the robots sensors to the zero states. */
  fun reset() {
    m_gyro.reset();
    m_leftEncoder.reset();
    m_rightEncoder.reset();
  }

  fun getAverageDistance(): Double {
    return (m_leftEncoder.getDistance() + m_rightEncoder.getDistance()) / 2;
  }

  fun updateOdometry() {
    m_odometry.update(m_gyro.getRotation2d(), m_leftEncoder.getDistance(), m_rightEncoder.getDistance());
    m_field.setRobotPose(m_odometry.getPoseMeters());
  }

  override fun periodic() {
    updateOdometry();
    log();
  }

  override fun simulationPeriodic() {
    m_drivetrainSimulator?.setInputs(
            m_leftMotor.get() * RobotController.getInputVoltage(),
            m_rightMotor.get() * RobotController.getInputVoltage());
    m_drivetrainSimulator?.update(0.02);

    m_leftEncoderSim?.setDistance(
            m_drivetrainSimulator!!.getLeftPositionMeters());
    m_leftEncoderSim?.setRate(
            m_drivetrainSimulator!!.getLeftVelocityMetersPerSecond());
    m_rightEncoderSim?.setDistance(
            m_drivetrainSimulator!!.getRightPositionMeters());
    m_rightEncoderSim?.setRate(
            m_drivetrainSimulator!!.getRightVelocityMetersPerSecond());
    m_gyroSim?.setAngle(-m_drivetrainSimulator!!.getHeading().getDegrees());
  }

  fun stop() {
    m_leftMotor.set(0.0);
    m_rightMotor.set(0.0);
  }
}
