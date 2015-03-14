package hector_nav_msgs;

public interface GetDistanceToObstacle extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetDistanceToObstacle";
  static final java.lang.String _DEFINITION = "# Returns the distance to the next obstacle from the origin of frame point.header.frame_id\n# in the direction of the point\n#\n# All units are meters.\n\ngeometry_msgs/PointStamped point\n---\nfloat32 distance\ngeometry_msgs/PointStamped end_point\n\n\n";
}
