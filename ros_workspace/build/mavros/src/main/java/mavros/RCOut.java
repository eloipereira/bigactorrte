package mavros;

public interface RCOut extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/RCOut";
  static final java.lang.String _DEFINITION = "# RAW Servo out state\n\nHeader header\nuint16[] channels\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  short[] getChannels();
  void setChannels(short[] value);
}
