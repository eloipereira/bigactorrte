package big_actor_msgs;

public interface LatLng extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/LatLng";
  static final java.lang.String _DEFINITION = "float64 latitude\nfloat64 longitude";
  double getLatitude();
  void setLatitude(double value);
  double getLongitude();
  void setLongitude(double value);
}
