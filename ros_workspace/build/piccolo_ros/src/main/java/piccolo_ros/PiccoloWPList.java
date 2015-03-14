package piccolo_ros;

public interface PiccoloWPList extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "piccolo_ros/PiccoloWPList";
  static final java.lang.String _DEFINITION = "Header header\nuint16 vehicleid\nuint8[] list";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  short getVehicleid();
  void setVehicleid(short value);
  org.jboss.netty.buffer.ChannelBuffer getList();
  void setList(org.jboss.netty.buffer.ChannelBuffer value);
}
