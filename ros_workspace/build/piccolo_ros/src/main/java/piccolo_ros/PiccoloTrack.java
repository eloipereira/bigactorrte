package piccolo_ros;

public interface PiccoloTrack extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "piccolo_ros/PiccoloTrack";
  static final java.lang.String _DEFINITION = "Header header\nuint16 vehicleid\nint8 to\nint8 go_to\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  short getVehicleid();
  void setVehicleid(short value);
  byte getTo();
  void setTo(byte value);
  byte getGoTo();
  void setGoTo(byte value);
}
