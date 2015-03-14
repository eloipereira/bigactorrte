package hector_nav_msgs;

public interface GetDistanceToObstacleResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetDistanceToObstacleResponse";
  static final java.lang.String _DEFINITION = "float32 distance\ngeometry_msgs/PointStamped end_point";
  float getDistance();
  void setDistance(float value);
  geometry_msgs.PointStamped getEndPoint();
  void setEndPoint(geometry_msgs.PointStamped value);
}
