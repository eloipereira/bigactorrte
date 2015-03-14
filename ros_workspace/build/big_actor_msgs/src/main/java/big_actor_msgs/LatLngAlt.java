package big_actor_msgs;

public interface LatLngAlt extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/LatLngAlt";
  static final java.lang.String _DEFINITION = "float64 latitude\nfloat64 longitude\nfloat64 altitude";
  double getLatitude();
  void setLatitude(double value);
  double getLongitude();
  void setLongitude(double value);
  double getAltitude();
  void setAltitude(double value);
}
