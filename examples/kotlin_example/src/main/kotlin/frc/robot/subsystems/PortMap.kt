package frc.robot.subsystems;

class PortMap  {
  companion object {
    // PWM
    const val kDrivetrainMotorLeftAPort  = 1;
    const val kDrivetrainMotorLeftBPort  = 2;
    const val kDrivetrainMotorRightAPort = 3;
    const val kDrivetrainMotorRightBPort = 4;
    const val kShooterMotorPort          = 5;
    const val kElevatorMotorPort         = 6;

    // DIO
    const val kDrivetrainEncoderLeftPortA  = 1;
    const val kDrivetrainEncoderLeftPortB  = 2;
    const val kDrivetrainEncoderRightPortA = 3;
    const val kDrivetrainEncoderRightPortB = 4;
    const val kShooterEncoderPortA         = 5;
    const val kShooterEncoderPortB         = 6;
    const val kElevatorEncoderPortA        = 7;
    const val kElevatorEncoderPortB        = 8;

    // Analog In
    const val kElevatorPot  = 1;
  }
}
