package hector_uav_msgs;

public interface ControllerState extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/ControllerState";
  static final java.lang.String _DEFINITION = "Header header\nuint8 source\n\nuint8 mode\nuint8 MOTORS = 1\nuint8 ATTITUDE = 2\nuint8 VELOCITY = 4\nuint8 POSITION = 8\nuint8 TURNRATE = 16\nuint8 HEADING = 32\nuint8 CLIMBRATE = 64\nuint8 HEIGHT = 128\n\nuint8 state\nuint8 MOTORS_RUNNING = 1\nuint8 FLYING = 2\nuint8 AIRBORNE = 4\n";
  static final byte MOTORS = 1;
  static final byte ATTITUDE = 2;
  static final byte VELOCITY = 4;
  static final byte POSITION = 8;
  static final byte TURNRATE = 16;
  static final byte HEADING = 32;
  static final byte CLIMBRATE = 64;
  static final byte HEIGHT = -128;
  static final byte MOTORS_RUNNING = 1;
  static final byte FLYING = 2;
  static final byte AIRBORNE = 4;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  byte getSource();
  void setSource(byte value);
  byte getMode();
  void setMode(byte value);
  byte getState();
  void setState(byte value);
}
