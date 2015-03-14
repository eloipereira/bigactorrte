package big_actor_msgs;

public interface Vehicle extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Vehicle";
  static final java.lang.String _DEFINITION = "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint64 vehicle_ttl            # Time-to-live. If message is not updated, it is removed from sse\nuint64 vehicleId              # Unique vehicle id\nLatLngAlt position            # Vehicle position\nfloat32 heading               # Vehicle heading\nuint32 taskId                 # Currently processed task\nuint8 taskState               # see Task.status\nuint8 vehicleState            # Status of the vehicle\n    uint8 VS_NONE=0\n    uint8 VS_IDLE=1           # Vehicle idles\n    uint8 VS_BUSY=2           # Vehicle is working at task specified in taskId\nuint8 vehicleType\n    uint8 VT_NONE=0\n    uint8 VT_QUADROTOR=1\n    uint8 VT_VESSEL=2 \n    uint8 VT_DRIFTER=3\n    uint8 VT_MODEL_AIRPLANE=4\n    uint8 VT_GROUND_STATION=5\nstring name                   # Vehicle name\nNetwork[] networks            # Networks known to the vehicle.\n";
  static final byte VS_NONE = 0;
  static final byte VS_IDLE = 1;
  static final byte VS_BUSY = 2;
  static final byte VT_NONE = 0;
  static final byte VT_QUADROTOR = 1;
  static final byte VT_VESSEL = 2;
  static final byte VT_DRIFTER = 3;
  static final byte VT_MODEL_AIRPLANE = 4;
  static final byte VT_GROUND_STATION = 5;
  long getTimeStamp();
  void setTimeStamp(long value);
  long getVehicleTtl();
  void setVehicleTtl(long value);
  long getVehicleId();
  void setVehicleId(long value);
  big_actor_msgs.LatLngAlt getPosition();
  void setPosition(big_actor_msgs.LatLngAlt value);
  float getHeading();
  void setHeading(float value);
  int getTaskId();
  void setTaskId(int value);
  byte getTaskState();
  void setTaskState(byte value);
  byte getVehicleState();
  void setVehicleState(byte value);
  byte getVehicleType();
  void setVehicleType(byte value);
  java.lang.String getName();
  void setName(java.lang.String value);
  java.util.List<big_actor_msgs.Network> getNetworks();
  void setNetworks(java.util.List<big_actor_msgs.Network> value);
}
