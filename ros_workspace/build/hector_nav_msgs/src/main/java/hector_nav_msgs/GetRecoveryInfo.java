package hector_nav_msgs;

public interface GetRecoveryInfo extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetRecoveryInfo";
  static final java.lang.String _DEFINITION = "# Returns the path travelled to get to req_pose (pose determined by request_time) \n# up to request_radius away from req_pose.\n#\n\ntime request_time\nfloat64 request_radius \n---\nnav_msgs/Path trajectory_radius_entry_pose_to_req_pose\ngeometry_msgs/PoseStamped radius_entry_pose\ngeometry_msgs/PoseStamped req_pose\n\n";
}
