package ros_vehicle_msgs;

public interface VehicleState extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/VehicleState";
  static final java.lang.String _DEFINITION = "Header                      header\nuint64                      vehicleId\nuint8                       vehicleType\nuint8                       vehicleNetwork\nbig_actor_msgs/LatLngAlt    position\nfloat32                     heading\nfloat32                     vx\nfloat32                     vy\nfloat32                     vz\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  long getVehicleId();
  void setVehicleId(long value);
  byte getVehicleType();
  void setVehicleType(byte value);
  byte getVehicleNetwork();
  void setVehicleNetwork(byte value);
  big_actor_msgs.LatLngAlt getPosition();
  void setPosition(big_actor_msgs.LatLngAlt value);
  float getHeading();
  void setHeading(float value);
  float getVx();
  void setVx(float value);
  float getVy();
  void setVy(float value);
  float getVz();
  void setVz(float value);
}
