package hector_nav_msgs;

public interface GetSearchPosition extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetSearchPosition";
  static final java.lang.String _DEFINITION = "#Returns a suggested search/observation position for an object of interest located at ooi_pose\n\ngeometry_msgs/PoseStamped ooi_pose\nfloat32 distance\n---\ngeometry_msgs/PoseStamped search_pose\n\n";
}
