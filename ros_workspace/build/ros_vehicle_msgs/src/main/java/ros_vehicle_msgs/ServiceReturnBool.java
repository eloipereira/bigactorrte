package ros_vehicle_msgs;

public interface ServiceReturnBool extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/ServiceReturnBool";
  static final java.lang.String _DEFINITION = "bool ok\nstring error";
  boolean getOk();
  void setOk(boolean value);
  java.lang.String getError();
  void setError(java.lang.String value);
}
