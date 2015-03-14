package ros_vehicle_msgs;

public interface GetVehiclesResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/GetVehiclesResponse";
  static final java.lang.String _DEFINITION = "big_actor_msgs/Vehicle[] vehicles";
  java.util.List<big_actor_msgs.Vehicle> getVehicles();
  void setVehicles(java.util.List<big_actor_msgs.Vehicle> value);
}
