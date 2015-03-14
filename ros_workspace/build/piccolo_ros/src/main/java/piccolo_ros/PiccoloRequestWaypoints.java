package piccolo_ros;

public interface PiccoloRequestWaypoints extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "piccolo_ros/PiccoloRequestWaypoints";
  static final java.lang.String _DEFINITION = "uint16 vehicleid";
  short getVehicleid();
  void setVehicleid(short value);
}
