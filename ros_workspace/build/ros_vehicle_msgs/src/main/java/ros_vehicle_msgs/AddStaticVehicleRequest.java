package ros_vehicle_msgs;

public interface AddStaticVehicleRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AddStaticVehicleRequest";
  static final java.lang.String _DEFINITION = "big_actor_msgs/Vehicle vehicle\nbool update\n";
  big_actor_msgs.Vehicle getVehicle();
  void setVehicle(big_actor_msgs.Vehicle value);
  boolean getUpdate();
  void setUpdate(boolean value);
}
