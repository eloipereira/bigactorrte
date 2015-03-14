package ros_vehicle_msgs;

public interface Waypoint extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/Waypoint";
  static final java.lang.String _DEFINITION = "Header                      header\nuint16                      waypointId\nuint16                      nextWp\nuint16                      previousWp\nbool                        start\nbool                        stop\nbool                        home\nbig_actor_msgs/LatLngAlt    position\nLoiterData                  loiter\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  short getWaypointId();
  void setWaypointId(short value);
  short getNextWp();
  void setNextWp(short value);
  short getPreviousWp();
  void setPreviousWp(short value);
  boolean getStart();
  void setStart(boolean value);
  boolean getStop();
  void setStop(boolean value);
  boolean getHome();
  void setHome(boolean value);
  big_actor_msgs.LatLngAlt getPosition();
  void setPosition(big_actor_msgs.LatLngAlt value);
  ros_vehicle_msgs.LoiterData getLoiter();
  void setLoiter(ros_vehicle_msgs.LoiterData value);
}
