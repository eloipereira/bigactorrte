package hector_uav_msgs;

public interface AttitudeCommand extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/AttitudeCommand";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 roll\nfloat32 pitch\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getRoll();
  void setRoll(float value);
  float getPitch();
  void setPitch(float value);
}
