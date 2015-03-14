package hector_worldmodel_msgs;

public interface AddObjectResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/AddObjectResponse";
  static final java.lang.String _DEFINITION = "# The object added to the model\nObject object";
  hector_worldmodel_msgs.Object getObject();
  void setObject(hector_worldmodel_msgs.Object value);
}
