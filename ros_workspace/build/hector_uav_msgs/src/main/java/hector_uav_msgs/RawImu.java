package hector_uav_msgs;

public interface RawImu extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/RawImu";
  static final java.lang.String _DEFINITION = "Header header\nint16[3] angular_velocity\nint16[3] linear_acceleration\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  short[] getAngularVelocity();
  void setAngularVelocity(short[] value);
  short[] getLinearAcceleration();
  void setLinearAcceleration(short[] value);
}
