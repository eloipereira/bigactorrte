package mavros;

public interface Mavlink extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/Mavlink";
  static final java.lang.String _DEFINITION = "Header header\nuint8 len\nuint8 seq\nuint8 sysid\nuint8 compid\nuint8 msgid\nbool fromlcm\nuint64[] payload64\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  byte getLen();
  void setLen(byte value);
  byte getSeq();
  void setSeq(byte value);
  byte getSysid();
  void setSysid(byte value);
  byte getCompid();
  void setCompid(byte value);
  byte getMsgid();
  void setMsgid(byte value);
  boolean getFromlcm();
  void setFromlcm(boolean value);
  long[] getPayload64();
  void setPayload64(long[] value);
}
