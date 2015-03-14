package piccolo_ros;

public interface PiccoloToPayload extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "piccolo_ros/PiccoloToPayload";
  static final java.lang.String _DEFINITION = "uint16 vehicleid\nint8 len\nint8[]  data";
  short getVehicleid();
  void setVehicleid(short value);
  byte getLen();
  void setLen(byte value);
  org.jboss.netty.buffer.ChannelBuffer getData();
  void setData(org.jboss.netty.buffer.ChannelBuffer value);
}
