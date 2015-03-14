package big_actor_msgs;

public interface StructureStateEstimate extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/StructureStateEstimate";
  static final java.lang.String _DEFINITION = "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint64 srcVehicleId           # Vehicle id of the sending vehicle\nVehicle[] vehicles            # Known vehicles\nConnectivity[] connections    # Established connections between vehicles\nLocation[] locations          # Known locations\nNetwork[] networks            # Known networks\nHosting[] hostings\t      # Hosting relation ";
  long getTimeStamp();
  void setTimeStamp(long value);
  long getSrcVehicleId();
  void setSrcVehicleId(long value);
  java.util.List<big_actor_msgs.Vehicle> getVehicles();
  void setVehicles(java.util.List<big_actor_msgs.Vehicle> value);
  java.util.List<big_actor_msgs.Connectivity> getConnections();
  void setConnections(java.util.List<big_actor_msgs.Connectivity> value);
  java.util.List<big_actor_msgs.Location> getLocations();
  void setLocations(java.util.List<big_actor_msgs.Location> value);
  java.util.List<big_actor_msgs.Network> getNetworks();
  void setNetworks(java.util.List<big_actor_msgs.Network> value);
  java.util.List<big_actor_msgs.Hosting> getHostings();
  void setHostings(java.util.List<big_actor_msgs.Hosting> value);
}
