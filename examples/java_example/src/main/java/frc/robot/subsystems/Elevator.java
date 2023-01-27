package frc.robot.subsystems;

import edu.wpi.first.wpilibj.Encoder;
import edu.wpi.first.wpilibj.RobotBase;
import edu.wpi.first.wpilibj.RobotController;
import edu.wpi.first.wpilibj.motorcontrol.Victor;
import edu.wpi.first.math.controller.PIDController;
import edu.wpi.first.wpilibj.simulation.ElevatorSim;
import edu.wpi.first.wpilibj.simulation.EncoderSim;
import edu.wpi.first.math.system.plant.DCMotor;
import edu.wpi.first.math.util.Units;
import edu.wpi.first.wpilibj.smartdashboard.SmartDashboard;
import edu.wpi.first.wpilibj2.command.PIDSubsystem;

public class Elevator extends PIDSubsystem {
  private static final double kP = 4;
  private static final double kI = 0.0;
  private static final double kD = 0.0;

  private static final  double kElevatorGearing = 10.0;
  private static final  double kElevatorDrumRadius = Units.inchesToMeters(2);
  private static final  double kCarriageMass = 4.0;

  private static final DCMotor kElevatorGearbox = DCMotor.getVex775Pro(4);
  private static final  double kMinElevatorHeight = Units.inchesToMeters(0);
  private static final  double kMaxElevatorHeight = Units.inchesToMeters(50);

  private static final double kArmEncoderDistPerPulse =
          2.0 * 3.14 * kElevatorDrumRadius / 4096.0;

  private final Victor m_motor;
  private final Encoder m_encoder;

  // Sim
  private EncoderSim m_encoderSim;
  private ElevatorSim m_elevatorSim;

  /** Create a new elevator subsystem. */
  public Elevator() {
    super(new PIDController(kP, kI, kD));

    m_motor = new Victor(PortMap.kElevatorMotorPort);
    m_encoder = new Encoder(PortMap.kElevatorEncoderPortA, PortMap.kElevatorEncoderPortB);


    m_encoder.setDistancePerPulse(kArmEncoderDistPerPulse);
    getController().setTolerance(0.005);

    if (RobotBase.isSimulation()) {
      m_encoderSim = new EncoderSim(m_encoder);
      m_elevatorSim = new ElevatorSim(kElevatorGearbox, kElevatorGearing, kCarriageMass,
              kElevatorDrumRadius, kMinElevatorHeight,
              kMaxElevatorHeight, true);
    }
  }

  public void log() {
    SmartDashboard.putNumber("Elevator Height", m_encoder.getDistance());
  }

  @Override
  public double getMeasurement() {
    return m_encoder.getDistance();
  }

  @Override
  public void useOutput(double output, double setpoint) {
    m_motor.set(output);
  }

  @Override
  public void periodic() {
    log();
  }

  @Override
  public void simulationPeriodic() {
    m_elevatorSim.setInput(m_motor.get() * RobotController.getInputVoltage());
    m_elevatorSim.update(0.02);
    m_encoderSim.setDistance(m_elevatorSim.getPositionMeters());
  }

  public void stop() {
    m_motor.set(0);
  }
}
