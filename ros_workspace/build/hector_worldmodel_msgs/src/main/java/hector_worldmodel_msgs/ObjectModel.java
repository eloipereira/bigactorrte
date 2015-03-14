package hector_worldmodel_msgs;

public interface ObjectModel extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/ObjectModel";
  static final java.lang.String _DEFINITION = "# hector_worldmodel_msgs/ObjectModel\n# This message represents a collection of known objects.\n\nHeader header\nObject[] objects\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  java.util.List<hector_worldmodel_msgs.Object> getObjects();
  void setObjects(java.util.List<hector_worldmodel_msgs.Object> value);
}
