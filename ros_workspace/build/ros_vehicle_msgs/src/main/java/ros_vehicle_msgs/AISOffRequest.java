package ros_vehicle_msgs;

public interface AISOffRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AISOffRequest";
  static final java.lang.String _DEFINITION = "uint64 vehicleId\n";
  long getVehicleId();
  void setVehicleId(long value);
}
