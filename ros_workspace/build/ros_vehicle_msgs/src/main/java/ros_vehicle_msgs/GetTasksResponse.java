package ros_vehicle_msgs;

public interface GetTasksResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/GetTasksResponse";
  static final java.lang.String _DEFINITION = "big_actor_msgs/Task[] tasks";
  java.util.List<big_actor_msgs.Task> getTasks();
  void setTasks(java.util.List<big_actor_msgs.Task> value);
}
