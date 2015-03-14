package hector_worldmodel_msgs;

public interface ImagePercept extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/ImagePercept";
  static final java.lang.String _DEFINITION = "# hector_worldmodel_msgs/ImagePercept\n# This message represents an observation of an object in a single image.\n\n# The header should equal the header of the corresponding image.\nHeader header\n\n# The camera info which is needed to project from image coordinates to world coordinates\nsensor_msgs/CameraInfo camera_info\n\n# Center coordinates of the percept in image coordinates\n# x: axis points to the right in the image\n# y: axis points downward in the image\nfloat32 x\nfloat32 y\n\n# Normalized size of the percept in image coordinates (or 0.0)\nfloat32 width\nfloat32 height\n\n# Distance estimate (slope distance) (or 0.0)\nfloat32 distance\n\n# Additional information about the percept\nPerceptInfo info\n";
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  sensor_msgs.CameraInfo getCameraInfo();
  void setCameraInfo(sensor_msgs.CameraInfo value);
  float getX();
  void setX(float value);
  float getY();
  void setY(float value);
  float getWidth();
  void setWidth(float value);
  float getHeight();
  void setHeight(float value);
  float getDistance();
  void setDistance(float value);
  hector_worldmodel_msgs.PerceptInfo getInfo();
  void setInfo(hector_worldmodel_msgs.PerceptInfo value);
}
