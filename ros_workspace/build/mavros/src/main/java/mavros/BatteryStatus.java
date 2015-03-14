package mavros;

public interface BatteryStatus extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/BatteryStatus";
  static final java.lang.String _DEFINITION = "# Represent battery status from SYSTEM_STATUS\n\nHeader header\nfloat32 voltage # [V]\nfloat32 current # [A]\nfloat32 remaining # 0..1\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getVoltage();
  void setVoltage(float value);
  float getCurrent();
  void setCurrent(float value);
  float getRemaining();
  void setRemaining(float value);
}
