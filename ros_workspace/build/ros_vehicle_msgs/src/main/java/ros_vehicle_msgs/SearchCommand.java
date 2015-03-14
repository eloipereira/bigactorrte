package ros_vehicle_msgs;

public interface SearchCommand extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/SearchCommand";
  static final java.lang.String _DEFINITION = "uint64 vehicleId\nbig_actor_msgs/Location area";
  long getVehicleId();
  void setVehicleId(long value);
  big_actor_msgs.Location getArea();
  void setArea(big_actor_msgs.Location value);
}
