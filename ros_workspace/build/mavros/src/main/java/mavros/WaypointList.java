package mavros;

public interface WaypointList extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointList";
  static final java.lang.String _DEFINITION = "mavros/Waypoint[] waypoints\n";
  java.util.List<mavros.Waypoint> getWaypoints();
  void setWaypoints(java.util.List<mavros.Waypoint> value);
}
