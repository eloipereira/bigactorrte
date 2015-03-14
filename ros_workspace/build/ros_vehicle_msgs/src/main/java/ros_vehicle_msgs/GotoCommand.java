package ros_vehicle_msgs;

public interface GotoCommand extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/GotoCommand";
  static final java.lang.String _DEFINITION = "uint64 vehicleId\nWaypoint waypoint";
  long getVehicleId();
  void setVehicleId(long value);
  ros_vehicle_msgs.Waypoint getWaypoint();
  void setWaypoint(ros_vehicle_msgs.Waypoint value);
}
