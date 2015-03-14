package hector_nav_msgs;

public interface GetRobotTrajectoryResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetRobotTrajectoryResponse";
  static final java.lang.String _DEFINITION = "nav_msgs/Path trajectory";
  nav_msgs.Path getTrajectory();
  void setTrajectory(nav_msgs.Path value);
}
