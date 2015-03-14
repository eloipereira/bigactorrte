package mavros;

public interface State extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/State";
  static final java.lang.String _DEFINITION = "# Current autopilot state\n\nHeader header\nbool armed\nbool guided\nstring mode\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  boolean getArmed();
  void setArmed(boolean value);
  boolean getGuided();
  void setGuided(boolean value);
  java.lang.String getMode();
  void setMode(java.lang.String value);
}
