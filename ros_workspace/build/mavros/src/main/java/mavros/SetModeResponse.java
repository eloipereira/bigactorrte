package mavros;

public interface SetModeResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/SetModeResponse";
  static final java.lang.String _DEFINITION = "bool success";
  boolean getSuccess();
  void setSuccess(boolean value);
}
