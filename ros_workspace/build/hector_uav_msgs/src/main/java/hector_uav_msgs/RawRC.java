package hector_uav_msgs;

public interface RawRC extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/RawRC";
  static final java.lang.String _DEFINITION = "Header header\nuint8 status\nuint16[] channel\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  byte getStatus();
  void setStatus(byte value);
  short[] getChannel();
  void setChannel(short[] value);
}
