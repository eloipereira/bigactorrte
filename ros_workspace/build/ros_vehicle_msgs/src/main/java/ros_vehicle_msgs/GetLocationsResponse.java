package ros_vehicle_msgs;

public interface GetLocationsResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/GetLocationsResponse";
  static final java.lang.String _DEFINITION = "big_actor_msgs/Location[] locations";
  java.util.List<big_actor_msgs.Location> getLocations();
  void setLocations(java.util.List<big_actor_msgs.Location> value);
}
