package hector_uav_msgs;

public interface RawMagnetic extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/RawMagnetic";
  static final java.lang.String _DEFINITION = "Header header\nfloat64[3] channel\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  double[] getChannel();
  void setChannel(double[] value);
}
