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

class Elevator : PIDSubsystem(PIDController(kP, kI, kD)) {
  companion object {
    private const val kP = 4.0;
    private const val kI = 0.0;
    private const val kD = 0.0;

    private const val kElevatorGearing = 10.0;
    private val kElevatorDrumRadius = Units.inchesToMeters(2.0);
    private const val kCarriageMass = 4.0;

    private val kElevatorGearbox = DCMotor.getVex775Pro(4);
    private val kMinElevatorHeight = Units.inchesToMeters(0.0);
    private val kMaxElevatorHeight = Units.inchesToMeters(50.0);

    private val kArmEncoderDistPerPulse =
        2.0 * 3.14 * kElevatorDrumRadius / 4096.0;
  }

  private val m_motor = Victor(PortMap.kElevatorMotorPort);
  private val m_encoder = Encoder(PortMap.kElevatorEncoderPortA, PortMap.kElevatorEncoderPortB);

  // Sim
  private var m_encoderSim: EncoderSim? = null;
  private var m_elevatorSim: ElevatorSim? = null;

  /** Create a new elevator subsystem. */
  init {
    m_encoder.setDistancePerPulse(kArmEncoderDistPerPulse);
    getController().setTolerance(0.005);

    if (RobotBase.isSimulation()) {
      m_encoderSim = EncoderSim(m_encoder);
      m_elevatorSim = ElevatorSim(kElevatorGearbox, kElevatorGearing, kCarriageMass,
              kElevatorDrumRadius, kMinElevatorHeight,
              kMaxElevatorHeight);
    }
  }

  fun log() {
    SmartDashboard.putNumber("Elevator Height", m_encoder.getDistance());
  }

  public override fun getMeasurement(): Double {
    return m_encoder.getDistance();
  }

  public override fun useOutput(output: Double, setpoint: Double) {
    m_motor.set(output);
  }

  override fun periodic() {
    log();
  }

  override fun simulationPeriodic() {
    m_elevatorSim?.setInput(m_motor.get() * RobotController.getInputVoltage());
    m_elevatorSim?.update(0.02);
    m_encoderSim?.setDistance(m_elevatorSim!!.getPositionMeters());
  }

  fun stop() {
    m_motor.set(0.0);
  }
}
