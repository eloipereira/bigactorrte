package hector_worldmodel_msgs;

public interface VerifyObjectResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/VerifyObjectResponse";
  static final java.lang.String _DEFINITION = "# The response\nuint8 response\nuint8 UNKNOWN = 0\nuint8 DISCARD = 1\nuint8 CONFIRM = 2";
  static final byte UNKNOWN = 0;
  static final byte DISCARD = 1;
  static final byte CONFIRM = 2;
  byte getResponse();
  void setResponse(byte value);
}
