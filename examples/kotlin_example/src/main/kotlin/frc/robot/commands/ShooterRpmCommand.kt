package frc.robot.commands;

import edu.wpi.first.wpilibj2.command.CommandBase;
import frc.robot.subsystems.Shooter;

class ShooterRpmCommand(shooter: Shooter, rpm: Double) : CommandBase() {
    private val m_shooter = shooter;
    private val m_rpm = rpm;

    init {
        addRequirements(m_shooter);
    }

    override fun execute() {
      m_shooter.spinAtRpm(m_rpm);
    }

    override fun isFinished(): Boolean {
      return false;
    }

    override fun end(interrupted: Boolean) {
      m_shooter.stop();
    }
}
