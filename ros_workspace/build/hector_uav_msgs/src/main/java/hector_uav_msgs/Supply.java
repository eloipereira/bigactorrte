package hector_uav_msgs;

public interface Supply extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/Supply";
  static final java.lang.String _DEFINITION = "Header header\nfloat32[] voltage\nfloat32[] current\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float[] getVoltage();
  void setVoltage(float[] value);
  float[] getCurrent();
  void setCurrent(float[] value);
}
