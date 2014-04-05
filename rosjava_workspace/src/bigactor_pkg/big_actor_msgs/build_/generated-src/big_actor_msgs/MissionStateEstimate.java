package big_actor_msgs;

public interface MissionStateEstimate extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/MissionStateEstimate";
  static final java.lang.String _DEFINITION = "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint64 srcVehicleId           # Vehicle id of the sending vehicle\nTask[] tasks                  # Current tasks";
  long getTimeStamp();
  void setTimeStamp(long value);
  long getSrcVehicleId();
  void setSrcVehicleId(long value);
  java.util.List<big_actor_msgs.Task> getTasks();
  void setTasks(java.util.List<big_actor_msgs.Task> value);
}
