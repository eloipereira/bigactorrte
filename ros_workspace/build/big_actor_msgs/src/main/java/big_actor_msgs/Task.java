package big_actor_msgs;

public interface Task extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Task";
  static final java.lang.String _DEFINITION = "uint64 taskStamp                # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint32 taskId                   # Unique task id\nuint32 taskType                 # Type of the Task (Search, GotoWP, Track, GotoLocation )\n    uint8 TT_NONE=0\n    uint8 TT_SEARCH=1\n    uint8 TT_GOTO_WP=2\n    uint8 TT_TRACK=3\n    uint8 TT_GOTO_LOCATION=4\n    uint8 TT_RETURN_HOME=5\n    uint8 TT_HOLD=6\t\t\t\t# (wait in loiter)\n    uint8 TT_VIDEOSTREAM=7\nuint8 status                    # Status of the task\n    uint8 TS_NONE=0\n    uint8 TS_TODO=1             # Created and Not Assigned \n    uint8 TS_IN_PROGRESS=2      # Assigned and ack by vehicle  \n    uint8 TS_DONE=3             # Done :)\n    uint8 TS_ASSIGNED=4         # Assigned by task publisher not ack\'d by vehicle  \n    uint8 TS_CANCELED=5         # Canceled by task publisher\nuint64 vehicleId                # Assigned or/and ack by vehicle  \nuint64 creationStamp            # If later we adopt a dynamic task creation (in milliseconds since the Epoch).\nstring parameters               # JSON parameters related with task type";
  static final byte TT_NONE = 0;
  static final byte TT_SEARCH = 1;
  static final byte TT_GOTO_WP = 2;
  static final byte TT_TRACK = 3;
  static final byte TT_GOTO_LOCATION = 4;
  static final byte TT_RETURN_HOME = 5;
  static final byte TT_HOLD = 6;
  static final byte TT_VIDEOSTREAM = 7;
  static final byte TS_NONE = 0;
  static final byte TS_TODO = 1;
  static final byte TS_IN_PROGRESS = 2;
  static final byte TS_DONE = 3;
  static final byte TS_ASSIGNED = 4;
  static final byte TS_CANCELED = 5;
  long getTaskStamp();
  void setTaskStamp(long value);
  int getTaskId();
  void setTaskId(int value);
  int getTaskType();
  void setTaskType(int value);
  byte getStatus();
  void setStatus(byte value);
  long getVehicleId();
  void setVehicleId(long value);
  long getCreationStamp();
  void setCreationStamp(long value);
  java.lang.String getParameters();
  void setParameters(java.lang.String value);
}
