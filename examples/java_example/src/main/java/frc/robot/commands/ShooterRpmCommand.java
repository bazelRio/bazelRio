package frc.robot.commands;

import edu.wpi.first.wpilibj2.command.CommandBase;
import frc.robot.subsystems.Shooter;

public class ShooterRpmCommand extends CommandBase {

    private final Shooter m_shooter;
    private final double m_rpm;

    public ShooterRpmCommand(Shooter shooter, double rpm) {
        m_shooter = shooter;
        m_rpm = rpm;

        addRequirements(shooter);
    }

    public void execute() { m_shooter.spinAtRpm(m_rpm); }
    public boolean isFinished() { return false; }
    public void end(boolean interrupted) { m_shooter.stop(); }
}
