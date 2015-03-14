package ros_vehicle_msgs;

public interface AddLocationRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AddLocationRequest";
  static final java.lang.String _DEFINITION = "big_actor_msgs/Location location\n";
  big_actor_msgs.Location getLocation();
  void setLocation(big_actor_msgs.Location value);
}
