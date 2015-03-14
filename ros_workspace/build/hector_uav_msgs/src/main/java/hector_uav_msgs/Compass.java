package hector_uav_msgs;

public interface Compass extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_uav_msgs/Compass";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 magnetic_heading\nfloat32 declination\n\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getMagneticHeading();
  void setMagneticHeading(float value);
  float getDeclination();
  void setDeclination(float value);
}
