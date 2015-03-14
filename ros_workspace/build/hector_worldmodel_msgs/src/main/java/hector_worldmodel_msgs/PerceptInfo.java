package hector_worldmodel_msgs;

public interface PerceptInfo extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/PerceptInfo";
  static final java.lang.String _DEFINITION = "# hector_worldmodel_msgs/PerceptInfo\n# This message contains information about the estimated class and object identity \n\n# A string identifying the object\'s class (all objects of a class look the same)\nstring class_id\n\n# The class association support of the observation\n# The support is the log odd likelihood ratio given by log(p(y/observation y belongs to object of class class_id) / p(y/observation y is a false positive))\nfloat32 class_support\n\n# A string identifying a specific object\nstring object_id\n\n# The object association support of the observation\n# The support is the log odd likelihood ratio given by log(p(observation belongs to object object_id) / p(observation is false positive or belongs to another object))\nfloat32 object_support\n\n# A string that contains the name or a description of the specific object\nstring name\n";
  java.lang.String getClassId();
  void setClassId(java.lang.String value);
  float getClassSupport();
  void setClassSupport(float value);
  java.lang.String getObjectId();
  void setObjectId(java.lang.String value);
  float getObjectSupport();
  void setObjectSupport(float value);
  java.lang.String getName();
  void setName(java.lang.String value);
}
