package ros_vehicle_msgs;

public interface AISRemoveFilterRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AISRemoveFilterRequest";
  static final java.lang.String _DEFINITION = "uint64 vehicleId\nuint32 mmsi\n";
  long getVehicleId();
  void setVehicleId(long value);
  int getMmsi();
  void setMmsi(int value);
}
