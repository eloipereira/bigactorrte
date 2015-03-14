package hector_worldmodel_msgs;

public interface SetObjectStateRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/SetObjectStateRequest";
  static final java.lang.String _DEFINITION = "# This service sets the state of the object with object_id object_id\n\nstring object_id\nObjectState new_state\n";
  java.lang.String getObjectId();
  void setObjectId(java.lang.String value);
  hector_worldmodel_msgs.ObjectState getNewState();
  void setNewState(hector_worldmodel_msgs.ObjectState value);
}
