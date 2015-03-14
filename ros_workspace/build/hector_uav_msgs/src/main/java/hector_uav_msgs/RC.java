package hector_uav_msgs;

public interface RC extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/RC";
  static final java.lang.String _DEFINITION = "Header header\n\nuint8 ROLL = 1\nuint8 PITCH = 2\nuint8 YAW = 3\nuint8 STEER = 4\nuint8 HEIGHT = 5\nuint8 THRUST = 6\nuint8 BRAKE = 7\n\nuint8 status\nbool valid\n\nfloat32[] axis\nuint8[] axis_function\n\nint8[] swit\nuint8[] swit_function\n";
  static final byte ROLL = 1;
  static final byte PITCH = 2;
  static final byte YAW = 3;
  static final byte STEER = 4;
  static final byte HEIGHT = 5;
  static final byte THRUST = 6;
  static final byte BRAKE = 7;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  byte getStatus();
  void setStatus(byte value);
  boolean getValid();
  void setValid(boolean value);
  float[] getAxis();
  void setAxis(float[] value);
  org.jboss.netty.buffer.ChannelBuffer getAxisFunction();
  void setAxisFunction(org.jboss.netty.buffer.ChannelBuffer value);
  org.jboss.netty.buffer.ChannelBuffer getSwit();
  void setSwit(org.jboss.netty.buffer.ChannelBuffer value);
  org.jboss.netty.buffer.ChannelBuffer getSwitFunction();
  void setSwitFunction(org.jboss.netty.buffer.ChannelBuffer value);
}
