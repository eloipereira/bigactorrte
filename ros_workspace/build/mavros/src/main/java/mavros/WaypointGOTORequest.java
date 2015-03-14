package mavros;

public interface WaypointGOTORequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointGOTORequest";
  static final java.lang.String _DEFINITION = "# Request go to waypoint\n#\n# Only supported FCU will return result\n\nmavros/Waypoint waypoint\n";
  mavros.Waypoint getWaypoint();
  void setWaypoint(mavros.Waypoint value);
}
