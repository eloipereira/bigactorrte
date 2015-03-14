package ros_vehicle_msgs;

public interface TrackStatus extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/TrackStatus";
  static final java.lang.String _DEFINITION = "Header  header\nuint64  vehicleId        # id of the vehicle\nuint16  targetWP       # id of the target waypoint   \nuint16  currWP         # id of the current waypoint    \nbool    finished           # just arrived\nbool    started            # just started\nuint64  eta              # time to arrive\nfloat32 distanceTo      # distance to WP";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  long getVehicleId();
  void setVehicleId(long value);
  short getTargetWP();
  void setTargetWP(short value);
  short getCurrWP();
  void setCurrWP(short value);
  boolean getFinished();
  void setFinished(boolean value);
  boolean getStarted();
  void setStarted(boolean value);
  long getEta();
  void setEta(long value);
  float getDistanceTo();
  void setDistanceTo(float value);
}
