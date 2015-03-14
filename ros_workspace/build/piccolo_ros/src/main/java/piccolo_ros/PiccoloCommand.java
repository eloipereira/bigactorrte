package piccolo_ros;

public interface PiccoloCommand extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "piccolo_ros/PiccoloCommand";
  static final java.lang.String _DEFINITION = "Header header\nuint16 vehicleid\nint8 command_code\n    uint8 CC_IAS=0\n    uint8 CC_ALTITUDE=1\n    uint8 CC_BANK=2\n    uint8 CC_FLAPS=3\n    uint8 CC_HEADING=4\n    uint8 CC_VRATE=5\n    uint8 CC_PITCH=6\nfloat32 value\n";
  static final byte CC_IAS = 0;
  static final byte CC_ALTITUDE = 1;
  static final byte CC_BANK = 2;
  static final byte CC_FLAPS = 3;
  static final byte CC_HEADING = 4;
  static final byte CC_VRATE = 5;
  static final byte CC_PITCH = 6;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  short getVehicleid();
  void setVehicleid(short value);
  byte getCommandCode();
  void setCommandCode(byte value);
  float getValue();
  void setValue(float value);
}
