package ros_vehicle_msgs;

public interface AISClearFiltersRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AISClearFiltersRequest";
  static final java.lang.String _DEFINITION = "uint64 vehicleId\n";
  long getVehicleId();
  void setVehicleId(long value);
}
