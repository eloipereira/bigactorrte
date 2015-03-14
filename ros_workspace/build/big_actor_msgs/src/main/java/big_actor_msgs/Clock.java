package big_actor_msgs;

public interface Clock extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Clock";
  static final java.lang.String _DEFINITION = "uint64 time                   # milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint8 source\n    uint8 CS_GPS=0\n    uint8 CS_UNIX=1";
  static final byte CS_GPS = 0;
  static final byte CS_UNIX = 1;
  long getTime();
  void setTime(long value);
  byte getSource();
  void setSource(byte value);
}
