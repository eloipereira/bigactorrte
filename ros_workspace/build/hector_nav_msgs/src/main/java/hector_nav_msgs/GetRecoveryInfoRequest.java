package hector_nav_msgs;

public interface GetRecoveryInfoRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_nav_msgs/GetRecoveryInfoRequest";
  static final java.lang.String _DEFINITION = "# Returns the path travelled to get to req_pose (pose determined by request_time) \n# up to request_radius away from req_pose.\n#\n\ntime request_time\nfloat64 request_radius \n";
  org.ros.message.Time getRequestTime();
  void setRequestTime(org.ros.message.Time value);
  double getRequestRadius();
  void setRequestRadius(double value);
}
