package hector_worldmodel_msgs;

public interface SetObjectNameRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/SetObjectNameRequest";
  static final java.lang.String _DEFINITION = "# This service sets the name of the object with object_id object_id\n\nstring object_id\nstring name\n";
  java.lang.String getObjectId();
  void setObjectId(java.lang.String value);
  java.lang.String getName();
  void setName(java.lang.String value);
}
