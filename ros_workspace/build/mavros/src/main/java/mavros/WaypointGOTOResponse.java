package mavros;

public interface WaypointGOTOResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointGOTOResponse";
  static final java.lang.String _DEFINITION = "bool success";
  boolean getSuccess();
  void setSuccess(boolean value);
}
