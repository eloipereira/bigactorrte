package mavros;

public interface WaypointClearResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointClearResponse";
  static final java.lang.String _DEFINITION = "bool success";
  boolean getSuccess();
  void setSuccess(boolean value);
}
