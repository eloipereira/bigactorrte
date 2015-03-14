package big_actor_msgs;

public interface Hosting extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Hosting";
  static final java.lang.String _DEFINITION = "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nstring bigActorID\t      # BigActor ID (Java UUID)\nstring vehicleName \t      # name of the Vehicle hosting the bigActor";
  long getTimeStamp();
  void setTimeStamp(long value);
  java.lang.String getBigActorID();
  void setBigActorID(java.lang.String value);
  java.lang.String getVehicleName();
  void setVehicleName(java.lang.String value);
}
