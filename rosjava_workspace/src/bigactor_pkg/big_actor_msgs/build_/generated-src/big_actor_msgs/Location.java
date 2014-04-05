package big_actor_msgs;

public interface Location extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Location";
  static final java.lang.String _DEFINITION = "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint32 locationId             # Unique location id\nLatLng[] boundaries           # Location vertices (polygon)\nfloat32 minimumAltitude       # Lower altitude bound of the location\nfloat32 maximumAltitude       # Upper altitude bound of the location\nuint8 locationType\n    uint8 LT_NONE=0\n    uint8 LT_SURFACE=1\n    uint8 LT_AIR_SPACE=2\n    uint8 LT_UNDERWATER=3\n    uint8 LT_OIL_SPILL=4\nstring name                   # Location name\n";
  static final byte LT_NONE = 0;
  static final byte LT_SURFACE = 1;
  static final byte LT_AIR_SPACE = 2;
  static final byte LT_UNDERWATER = 3;
  static final byte LT_OIL_SPILL = 4;
  long getTimeStamp();
  void setTimeStamp(long value);
  int getLocationId();
  void setLocationId(int value);
  java.util.List<big_actor_msgs.LatLng> getBoundaries();
  void setBoundaries(java.util.List<big_actor_msgs.LatLng> value);
  float getMinimumAltitude();
  void setMinimumAltitude(float value);
  float getMaximumAltitude();
  void setMaximumAltitude(float value);
  byte getLocationType();
  void setLocationType(byte value);
  java.lang.String getName();
  void setName(java.lang.String value);
}
