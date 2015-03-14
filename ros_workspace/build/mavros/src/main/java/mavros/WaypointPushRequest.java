package mavros;

public interface WaypointPushRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointPushRequest";
  static final java.lang.String _DEFINITION = "# Send waypoints to device\n#\n# Returns success status and transfered count\n\nmavros/Waypoint[] waypoints\n";
  java.util.List<mavros.Waypoint> getWaypoints();
  void setWaypoints(java.util.List<mavros.Waypoint> value);
}
