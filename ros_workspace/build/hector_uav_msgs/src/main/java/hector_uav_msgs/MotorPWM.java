package hector_uav_msgs;

public interface MotorPWM extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/MotorPWM";
  static final java.lang.String _DEFINITION = "Header header\nuint8[] pwm\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  org.jboss.netty.buffer.ChannelBuffer getPwm();
  void setPwm(org.jboss.netty.buffer.ChannelBuffer value);
}
