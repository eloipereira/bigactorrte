package ros_vehicle_msgs;

public interface AddTaskRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AddTaskRequest";
  static final java.lang.String _DEFINITION = "big_actor_msgs/Task task\nbool update\n";
  big_actor_msgs.Task getTask();
  void setTask(big_actor_msgs.Task value);
  boolean getUpdate();
  void setUpdate(boolean value);
}
