package hector_uav_msgs;

public interface VelocityZCommand extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/VelocityZCommand";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 z\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getZ();
  void setZ(float value);
}
