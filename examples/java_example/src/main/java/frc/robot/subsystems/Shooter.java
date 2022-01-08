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
public class Shooter extends SubsystemBase {

    private static final double kP = 0.01;
    private static final double kI = 0.0;
    private static final double kD = 0.0;
    private static final double kF = 12.0 / 4700;

    private static final DCMotor kGearbox = DCMotor.getVex775Pro(2);
    private static final double kGearing = 4;
    private static final double kInertia = 0.008;

  private final Victor m_motor;
  private final Encoder m_encoder;
  private final PIDController m_pidController;

  // Sim
    private EncoderSim m_encoderSim;
    private FlywheelSim m_flywheelSim;

  /** Create a new claw subsystem. */
  public Shooter() {
      m_motor = new Victor(PortMap.kShooterMotorPort);
      m_encoder = new Encoder(PortMap.kShooterEncoderPortA, PortMap.kShooterEncoderPortB);
      m_pidController = new PIDController(kP, kI, kD);

    if (RobotBase.isSimulation()) {
        m_encoderSim = new EncoderSim(m_encoder);
        m_flywheelSim = new FlywheelSim(kGearbox, kGearing, kInertia);
    }
  }

  public void log() {
      SmartDashboard.putNumber("Shooter Speed", m_motor.get());
      SmartDashboard.putNumber("Shooter RPM", getRpm());
  }

  public void stop() {
    m_motor.set(0);
  }

  public void spinAtRpm(double rpm) {
      double pidVoltage = m_pidController.calculate(m_encoder.getRate(), rpm);
      double voltage = pidVoltage + rpm * kF;
      m_motor.setVoltage(voltage);
  }
    double getRpm() { return m_encoder.getRate(); }

  @Override
  public void periodic() {
    log();
  }

    @Override
     public void simulationPeriodic() {
        m_flywheelSim.setInput(m_motor.get() * RobotController.getInputVoltage());

        m_flywheelSim.update(0.02);
        m_encoderSim.setRate(m_flywheelSim.getAngularVelocityRPM());
    }
}
