package hector_nav_msgs;

public interface GetNormalResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetNormalResponse";
  static final java.lang.String _DEFINITION = "geometry_msgs/Vector3 normal\nfloat32 yaw";
  geometry_msgs.Vector3 getNormal();
  void setNormal(geometry_msgs.Vector3 value);
  float getYaw();
  void setYaw(float value);
}
