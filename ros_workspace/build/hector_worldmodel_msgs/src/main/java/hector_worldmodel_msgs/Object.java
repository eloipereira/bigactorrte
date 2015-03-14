package hector_worldmodel_msgs;

public interface Object extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/Object";
  static final java.lang.String _DEFINITION = "# hector_worldmodel_msgs/Object\n# This message represents an estimate of an object\'s pose and identity.\n\n# The header.\n#   stamp: Timestamp of last update.\n#   frame_id: Coordinate frame, in which the pose is given\nHeader header\n\n# The pose\ngeometry_msgs/PoseWithCovariance pose\n\n# Further information about the object\nObjectInfo info\n\n# The tracked state of the object\nObjectState state\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  geometry_msgs.PoseWithCovariance getPose();
  void setPose(geometry_msgs.PoseWithCovariance value);
  hector_worldmodel_msgs.ObjectInfo getInfo();
  void setInfo(hector_worldmodel_msgs.ObjectInfo value);
  hector_worldmodel_msgs.ObjectState getState();
  void setState(hector_worldmodel_msgs.ObjectState value);
}
