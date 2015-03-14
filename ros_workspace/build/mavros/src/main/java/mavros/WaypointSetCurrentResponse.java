package mavros;

public interface WaypointSetCurrentResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointSetCurrentResponse";
  static final java.lang.String _DEFINITION = "bool success";
  boolean getSuccess();
  void setSuccess(boolean value);
}
