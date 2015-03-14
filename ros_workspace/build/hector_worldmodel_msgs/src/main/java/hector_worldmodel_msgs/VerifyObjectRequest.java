package hector_worldmodel_msgs;

public interface VerifyObjectRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/VerifyObjectRequest";
  static final java.lang.String _DEFINITION = "# This service is called to ask other nodes for their opinion about an object estimate\n\n# The object\nObject object\n";
  hector_worldmodel_msgs.Object getObject();
  void setObject(hector_worldmodel_msgs.Object value);
}
