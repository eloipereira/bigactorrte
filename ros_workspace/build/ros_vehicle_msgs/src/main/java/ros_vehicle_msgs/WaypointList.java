package ros_vehicle_msgs;

public interface WaypointList extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/WaypointList";
  static final java.lang.String _DEFINITION = "uint64 vehicleId\nWaypoint[] waypointList";
  long getVehicleId();
  void setVehicleId(long value);
  java.util.List<ros_vehicle_msgs.Waypoint> getWaypointList();
  void setWaypointList(java.util.List<ros_vehicle_msgs.Waypoint> value);
}
