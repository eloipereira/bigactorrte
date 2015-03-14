package hector_worldmodel_msgs;

public interface ObjectInfo extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/ObjectInfo";
  static final java.lang.String _DEFINITION = "# hector_worldmodel_msgs/ObjectInfo\n# This message contains information about the estimated class affiliation, object id and corresponding support\n\n# A string identifying the object\'s class (all objects of a class look the same)\nstring class_id\n\n# A string identifying the specific object\nstring object_id\n\n# A string that contains the name or a description of the specific object\nstring name\n\n# The support (degree of belief) of the object\'s presence given as log odd ratio\nfloat32 support\n\n";
  java.lang.String getClassId();
  void setClassId(java.lang.String value);
  java.lang.String getObjectId();
  void setObjectId(java.lang.String value);
  java.lang.String getName();
  void setName(java.lang.String value);
  float getSupport();
  void setSupport(float value);
}
