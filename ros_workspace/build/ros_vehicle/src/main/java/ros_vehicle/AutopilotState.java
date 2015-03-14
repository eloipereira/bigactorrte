package ros_vehicle;

public interface AutopilotState extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle/AutopilotState";
  static final java.lang.String _DEFINITION = "Header header\nuint64 vehicleId\nbig_actor_msgs/LatLngAlt position\nfloat32 heading\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  long getVehicleId();
  void setVehicleId(long value);
  big_actor_msgs.LatLngAlt getPosition();
  void setPosition(big_actor_msgs.LatLngAlt value);
  float getHeading();
  void setHeading(float value);
}
