package piccolo_ros;

public interface PiccoloStatus extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "piccolo_ros/PiccoloStatus";
  static final java.lang.String _DEFINITION = "Header header\nuint16 vehicleid\nuint8 orbitRadius\nuint8 trackerStatus\nuint16 timeToWp\nuint8 wpFrom\nuint8 wpTo\nbool airBoundaryViolated\nbool autopilotEngineKill\nbool commsTimeout\nbool fligthTimerElapsed\nbool fligthTermination\nbool gpsTimeout\nbool orbiting";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  short getVehicleid();
  void setVehicleid(short value);
  byte getOrbitRadius();
  void setOrbitRadius(byte value);
  byte getTrackerStatus();
  void setTrackerStatus(byte value);
  short getTimeToWp();
  void setTimeToWp(short value);
  byte getWpFrom();
  void setWpFrom(byte value);
  byte getWpTo();
  void setWpTo(byte value);
  boolean getAirBoundaryViolated();
  void setAirBoundaryViolated(boolean value);
  boolean getAutopilotEngineKill();
  void setAutopilotEngineKill(boolean value);
  boolean getCommsTimeout();
  void setCommsTimeout(boolean value);
  boolean getFligthTimerElapsed();
  void setFligthTimerElapsed(boolean value);
  boolean getFligthTermination();
  void setFligthTermination(boolean value);
  boolean getGpsTimeout();
  void setGpsTimeout(boolean value);
  boolean getOrbiting();
  void setOrbiting(boolean value);
}
