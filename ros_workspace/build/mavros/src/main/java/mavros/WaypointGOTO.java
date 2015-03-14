package mavros;

public interface WaypointGOTO extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointGOTO";
  static final java.lang.String _DEFINITION = "# Request go to waypoint\n#\n# Only supported FCU will return result\n\nmavros/Waypoint waypoint\n---\nbool success\n";
}
