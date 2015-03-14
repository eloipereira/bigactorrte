package ros_vehicle_msgs;

public interface AssignTaskRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/AssignTaskRequest";
  static final java.lang.String _DEFINITION = "uint32 task\nuint64 to\n";
  int getTask();
  void setTask(int value);
  long getTo();
  void setTo(long value);
}
