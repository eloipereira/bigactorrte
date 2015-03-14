package ros_vehicle_msgs;

public interface TaskState extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/TaskState";
  static final java.lang.String _DEFINITION = "uint64  vehicleId\nuint8   vehicleStatus\nuint64  stamp\nuint32  taskId\nuint8   taskStatus";
  long getVehicleId();
  void setVehicleId(long value);
  byte getVehicleStatus();
  void setVehicleStatus(byte value);
  long getStamp();
  void setStamp(long value);
  int getTaskId();
  void setTaskId(int value);
  byte getTaskStatus();
  void setTaskStatus(byte value);
}
