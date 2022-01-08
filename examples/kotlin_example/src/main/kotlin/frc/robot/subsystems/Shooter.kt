// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

package frc.robot.subsystems;

import edu.wpi.first.wpilibj.DigitalInput;
import edu.wpi.first.wpilibj.Encoder;
import edu.wpi.first.wpilibj.RobotBase;
import edu.wpi.first.wpilibj.RobotController;
import edu.wpi.first.wpilibj.motorcontrol.Victor;
import edu.wpi.first.math.controller.PIDController;
import edu.wpi.first.wpilibj.simulation.EncoderSim;
import edu.wpi.first.wpilibj.simulation.FlywheelSim;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;
import edu.wpi.first.math.system.plant.DCMotor;
import edu.wpi.first.wpilibj2.command.SubsystemBase;

/**
 * The claw subsystem is a simple system with a motor for opening and closing. If using stronger
 * motors, you should probably use a sensor so that the motors don't stall.
 */
class Shooter : SubsystemBase() {
  companion object {
    private const val kP = 0.01;
    private const val kI = 0.0;
    private const val kD = 0.0;
    private const val kF = 12.0 / 4700;

    private val kGearbox = DCMotor.getVex775Pro(2);
    private const val kGearing = 4.0;
    private const val kInertia = 0.008;
  }

  private val m_motor = Victor(PortMap.kShooterMotorPort);
  private val m_encoder = Encoder(PortMap.kShooterEncoderPortA, PortMap.kShooterEncoderPortB);
  private val m_pidController = PIDController(kP, kI, kD);

  // Sim
  private var m_encoderSim: EncoderSim? = null;
  private var m_flywheelSim: FlywheelSim? = null;

  /** Create a new claw subsystem. */
  init {
    if (RobotBase.isSimulation()) {
        m_encoderSim = EncoderSim(m_encoder);
        m_flywheelSim = FlywheelSim(kGearbox, kGearing, kInertia);
    }
  }

  fun log() {
      SmartDashboard.putNumber("Shooter Speed", m_motor.get());
      SmartDashboard.putNumber("Shooter RPM", getRpm());
  }

  fun stop() {
    m_motor.set(0.0);
  }

  fun spinAtRpm(rpm: Double) {
      val pidVoltage = m_pidController.calculate(m_encoder.getRate(), rpm);
      val voltage = pidVoltage + rpm * kF;
      m_motor.setVoltage(voltage);
  }

  fun getRpm(): Double {
    return m_encoder.getRate();
  }

  override fun periodic() {
    log();
  }

  override fun simulationPeriodic() {
    m_flywheelSim?.setInput(m_motor.get() * RobotController.getInputVoltage());

    m_flywheelSim?.update(0.02);
    m_encoderSim?.setRate(m_flywheelSim!!.getAngularVelocityRPM());
  }
}
