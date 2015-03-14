package ros_vehicle_msgs;

public interface GetUAVWaypointResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/GetUAVWaypointResponse";
  static final java.lang.String _DEFINITION = "Waypoint waypoint\nServiceReturnBool result";
  ros_vehicle_msgs.Waypoint getWaypoint();
  void setWaypoint(ros_vehicle_msgs.Waypoint value);
  ros_vehicle_msgs.ServiceReturnBool getResult();
  void setResult(ros_vehicle_msgs.ServiceReturnBool value);
}
