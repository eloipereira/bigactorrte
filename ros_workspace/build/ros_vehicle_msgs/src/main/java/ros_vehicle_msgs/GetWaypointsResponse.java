package ros_vehicle_msgs;

public interface GetWaypointsResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/GetWaypointsResponse";
  static final java.lang.String _DEFINITION = "Waypoint[] waypoints\nServiceReturnBool result";
  java.util.List<ros_vehicle_msgs.Waypoint> getWaypoints();
  void setWaypoints(java.util.List<ros_vehicle_msgs.Waypoint> value);
  ros_vehicle_msgs.ServiceReturnBool getResult();
  void setResult(ros_vehicle_msgs.ServiceReturnBool value);
}
