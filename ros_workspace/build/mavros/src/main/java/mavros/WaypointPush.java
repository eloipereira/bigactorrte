package mavros;

public interface WaypointPush extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/WaypointPush";
  static final java.lang.String _DEFINITION = "# Send waypoints to device\n#\n# Returns success status and transfered count\n\nmavros/Waypoint[] waypoints\n---\nbool success\nuint32 wp_transfered\n";
}
