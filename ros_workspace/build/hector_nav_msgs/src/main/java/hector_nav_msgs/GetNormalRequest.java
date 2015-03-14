package hector_nav_msgs;

public interface GetNormalRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetNormalRequest";
  static final java.lang.String _DEFINITION = "geometry_msgs/PointStamped point\n";
  geometry_msgs.PointStamped getPoint();
  void setPoint(geometry_msgs.PointStamped value);
}
