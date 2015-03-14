package mavros;

public interface CommandLong extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/CommandLong";
  static final java.lang.String _DEFINITION = "# Generic COMMAND_LONG\n\n# some common MAV_CMD\nuint16 CMD_DO_SET_MODE = 176\nuint16 CMD_DO_JUMP = 177\nuint16 CMD_DO_CHANGE_SPEED = 178\nuint16 CMD_DO_SET_HOME = 179\nuint16 CMD_DO_SET_RELAY = 181\nuint16 CMD_DO_REPEAT_RELAY = 182\nuint16 CMD_DO_SET_SERVO = 183\nuint16 CMD_DO_REPEAT_SERVO = 184\nuint16 CMD_DO_CONTROL_VIDEO = 200\nuint16 CMD_DO_SET_ROI = 201\nuint16 CMD_DO_MOUNT_CONTROL = 205\nuint16 CMD_DO_SET_CAM_TRIGG_DIST = 206\nuint16 CMD_DO_FENCE_ENABLE = 207\nuint16 CMD_DO_PARACHUTE = 208\nuint16 CMD_DO_INVERTED_FLOGHT = 210\nuint16 CMD_DO_MOUNT_CONTROL_QUAT = 220\nuint16 CMD_PREFLIGHT_CALIBRATION = 241\nuint16 CMD_MISSION_START = 300\nuint16 CMD_COMPONENT_ARM_DISARM = 400\nuint16 CMD_START_RX_PAIR = 500\n\nuint16 command\nuint8 confirmation\nfloat32 param1\nfloat32 param2\nfloat32 param3\nfloat32 param4\nfloat32 param5\t# x_lat\nfloat32 param6\t# y_lon\nfloat32 param7\t# z_alt\n---\nbool success\n# raw result returned by COMMAND_ACK\nuint8 result\n";
}
