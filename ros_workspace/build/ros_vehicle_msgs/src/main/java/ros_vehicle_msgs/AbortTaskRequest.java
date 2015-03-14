package ros_vehicle_msgs;

public interface AbortTaskRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AbortTaskRequest";
  static final java.lang.String _DEFINITION = "uint32 task\n";
  int getTask();
  void setTask(int value);
}
