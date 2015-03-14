package hector_worldmodel_msgs;

public interface AddObject extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/AddObject";
  static final java.lang.String _DEFINITION = "# This service adds an object to the model explicitly\n\n# The object that should be added to the model\nObject object\n\n# If true, the object is mapped to the next obstacle from the perspective of the source frame\nbool map_to_next_obstacle\n---\n# The object added to the model\nObject object\n";
}
