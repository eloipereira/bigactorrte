package hector_uav_msgs;

public interface MotorStatus extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/MotorStatus";
  static final java.lang.String _DEFINITION = "Header header\nbool on\nbool running\nfloat32[] voltage\nfloat32[] frequency\nfloat32[] current\n\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  boolean getOn();
  void setOn(boolean value);
  boolean getRunning();
  void setRunning(boolean value);
  float[] getVoltage();
  void setVoltage(float[] value);
  float[] getFrequency();
  void setFrequency(float[] value);
  float[] getCurrent();
  void setCurrent(float[] value);
}
