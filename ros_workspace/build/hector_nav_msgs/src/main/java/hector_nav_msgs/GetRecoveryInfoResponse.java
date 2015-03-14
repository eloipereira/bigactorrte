package hector_nav_msgs;

public interface GetRecoveryInfoResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetRecoveryInfoResponse";
  static final java.lang.String _DEFINITION = "nav_msgs/Path trajectory_radius_entry_pose_to_req_pose\ngeometry_msgs/PoseStamped radius_entry_pose\ngeometry_msgs/PoseStamped req_pose";
  nav_msgs.Path getTrajectoryRadiusEntryPoseToReqPose();
  void setTrajectoryRadiusEntryPoseToReqPose(nav_msgs.Path value);
  geometry_msgs.PoseStamped getRadiusEntryPose();
  void setRadiusEntryPose(geometry_msgs.PoseStamped value);
  geometry_msgs.PoseStamped getReqPose();
  void setReqPose(geometry_msgs.PoseStamped value);
}
