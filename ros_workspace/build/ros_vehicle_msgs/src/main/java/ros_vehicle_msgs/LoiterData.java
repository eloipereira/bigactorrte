package ros_vehicle_msgs;

public interface LoiterData extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/LoiterData";
  static final java.lang.String _DEFINITION = "bool active             #have loiter definition \nuint16 radius           #radius of loiter in metters  \nuint16 time_sec         #time in seconds to be in loiter\nuint16 times            #number of loiters to do \nbool clockwise          #go clockwise direction    \n";
  boolean getActive();
  void setActive(boolean value);
  short getRadius();
  void setRadius(short value);
  short getTimeSec();
  void setTimeSec(short value);
  short getTimes();
  void setTimes(short value);
  boolean getClockwise();
  void setClockwise(boolean value);
}
