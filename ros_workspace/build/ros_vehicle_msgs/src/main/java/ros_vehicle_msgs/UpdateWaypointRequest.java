package ros_vehicle_msgs;

public interface UpdateWaypointRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/UpdateWaypointRequest";
  static final java.lang.String _DEFINITION = "Waypoint wp\n";
  ros_vehicle_msgs.Waypoint getWp();
  void setWp(ros_vehicle_msgs.Waypoint value);
}
