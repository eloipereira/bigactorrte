package mavros;

public interface CommandHomeResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/CommandHomeResponse";
  static final java.lang.String _DEFINITION = "bool success\nuint8 result";
  boolean getSuccess();
  void setSuccess(boolean value);
  byte getResult();
  void setResult(byte value);
}
