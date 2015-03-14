package hector_nav_msgs;

public interface GetDistanceToObstacleRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetDistanceToObstacleRequest";
  static final java.lang.String _DEFINITION = "# Returns the distance to the next obstacle from the origin of frame point.header.frame_id\n# in the direction of the point\n#\n# All units are meters.\n\ngeometry_msgs/PointStamped point\n";
  geometry_msgs.PointStamped getPoint();
  void setPoint(geometry_msgs.PointStamped value);
}
