package big_actor_msgs;

public interface Bigraph extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Bigraph";
  static final java.lang.String _DEFINITION = "string[] signature # list of node types (aka controls)\nstring[] names # list of link names\nstring bgm # bigraph term";
  java.util.List<java.lang.String> getSignature();
  void setSignature(java.util.List<java.lang.String> value);
  java.util.List<java.lang.String> getNames();
  void setNames(java.util.List<java.lang.String> value);
  java.lang.String getBgm();
  void setBgm(java.lang.String value);
}
