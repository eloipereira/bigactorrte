package rosapi;

public interface TopicsResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rosapi/TopicsResponse";
  static final java.lang.String _DEFINITION = "string[] topics";
  java.util.List<java.lang.String> getTopics();
  void setTopics(java.util.List<java.lang.String> value);
}
