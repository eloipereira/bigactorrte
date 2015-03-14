package hector_worldmodel_msgs;

public interface VerifyPerceptRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/VerifyPerceptRequest";
  static final java.lang.String _DEFINITION = "# This service is called to ask other nodes for their opinion about a percept\n\n# The percept\nPosePercept percept\n";
  hector_worldmodel_msgs.PosePercept getPercept();
  void setPercept(hector_worldmodel_msgs.PosePercept value);
}
