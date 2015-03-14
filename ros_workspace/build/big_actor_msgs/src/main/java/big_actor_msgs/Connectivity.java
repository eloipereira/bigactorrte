package big_actor_msgs;

public interface Connectivity extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Connectivity";
  static final java.lang.String _DEFINITION = "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint64 srcVehicleId           # First participating vehicle\nuint64 dstVehicleId           # Second participating vehicle\nNetwork network               # Network used for this connection\n";
  long getTimeStamp();
  void setTimeStamp(long value);
  long getSrcVehicleId();
  void setSrcVehicleId(long value);
  long getDstVehicleId();
  void setDstVehicleId(long value);
  big_actor_msgs.Network getNetwork();
  void setNetwork(big_actor_msgs.Network value);
}
