package ros_vehicle_msgs;

public interface GatewayData extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "ros_vehicle_msgs/GatewayData";
  static final java.lang.String _DEFINITION = "uint32 src_id\nuint8 msg_type\n    uint8 GD_MSE=0\n    uint8 GD_SSE=1\nuint8[] serialized     \n";
  static final byte GD_MSE = 0;
  static final byte GD_SSE = 1;
  int getSrcId();
  void setSrcId(int value);
  byte getMsgType();
  void setMsgType(byte value);
  org.jboss.netty.buffer.ChannelBuffer getSerialized();
  void setSerialized(org.jboss.netty.buffer.ChannelBuffer value);
}
