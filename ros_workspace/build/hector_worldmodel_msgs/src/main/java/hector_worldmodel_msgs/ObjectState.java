package hector_worldmodel_msgs;

public interface ObjectState extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_worldmodel_msgs/ObjectState";
  static final java.lang.String _DEFINITION = "# The state of an object estimate used to track\n# states smaller than 0 disable all updates\n\n# Predefined states. Use states smaller than 0 or bigger than 63 for user defined states.\nint8 UNKNOWN = 0\nint8 PENDING = 1\nint8 ACTIVE  = 2\nint8 INACTIVE = 3\nint8 CONFIRMED = -1\nint8 DISCARDED = -2\nint8 APPROACHING = -3\n\nint8 state\n";
  static final byte UNKNOWN = 0;
  static final byte PENDING = 1;
  static final byte ACTIVE = 2;
  static final byte INACTIVE = 3;
  static final byte CONFIRMED = -1;
  static final byte DISCARDED = -2;
  static final byte APPROACHING = -3;
  byte getState();
  void setState(byte value);
}
