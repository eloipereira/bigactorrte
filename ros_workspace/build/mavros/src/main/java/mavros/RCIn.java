package mavros;

public interface RCIn extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/RCIn";
  static final java.lang.String _DEFINITION = "# RAW RC input state\n\nHeader header\nuint8 rssi\nuint16[] channels\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  byte getRssi();
  void setRssi(byte value);
  short[] getChannels();
  void setChannels(short[] value);
}
