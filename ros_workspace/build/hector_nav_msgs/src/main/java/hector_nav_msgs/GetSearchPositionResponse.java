package hector_nav_msgs;

public interface GetSearchPositionResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetSearchPositionResponse";
  static final java.lang.String _DEFINITION = "geometry_msgs/PoseStamped search_pose";
  geometry_msgs.PoseStamped getSearchPose();
  void setSearchPose(geometry_msgs.PoseStamped value);
}
