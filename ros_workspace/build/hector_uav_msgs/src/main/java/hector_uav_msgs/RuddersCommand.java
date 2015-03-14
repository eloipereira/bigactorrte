package hector_uav_msgs;

public interface RuddersCommand extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/RuddersCommand";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 aileron\nfloat32 elevator\nfloat32 rudder\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getAileron();
  void setAileron(float value);
  float getElevator();
  void setElevator(float value);
  float getRudder();
  void setRudder(float value);
}
