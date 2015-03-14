package hector_worldmodel_msgs;

public interface VerifyObject extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/VerifyObject";
  static final java.lang.String _DEFINITION = "# This service is called to ask other nodes for their opinion about an object estimate\n\n# The object\nObject object\n---\n# The response\nuint8 response\nuint8 UNKNOWN = 0\nuint8 DISCARD = 1\nuint8 CONFIRM = 2\n";
}
