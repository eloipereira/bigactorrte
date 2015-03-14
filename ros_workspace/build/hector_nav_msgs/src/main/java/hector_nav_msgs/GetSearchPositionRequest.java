package hector_nav_msgs;

public interface GetSearchPositionRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetSearchPositionRequest";
  static final java.lang.String _DEFINITION = "#Returns a suggested search/observation position for an object of interest located at ooi_pose\n\ngeometry_msgs/PoseStamped ooi_pose\nfloat32 distance\n";
  geometry_msgs.PoseStamped getOoiPose();
  void setOoiPose(geometry_msgs.PoseStamped value);
  float getDistance();
  void setDistance(float value);
}
