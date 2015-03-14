package hector_worldmodel_msgs;

public interface PosePercept extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/PosePercept";
  static final java.lang.String _DEFINITION = "# hector_worldmodel_msgs/PosePercept\n# This message represents an observation of an object in a single image.\n\n# The header should equal the header of the corresponding image.\nHeader header\n\n# The estimated pose of the object with its covariance\ngeometry_msgs/PoseWithCovariance pose\n\n# Additional information about the percept\nPerceptInfo info\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  geometry_msgs.PoseWithCovariance getPose();
  void setPose(geometry_msgs.PoseWithCovariance value);
  hector_worldmodel_msgs.PerceptInfo getInfo();
  void setInfo(hector_worldmodel_msgs.PerceptInfo value);
}
