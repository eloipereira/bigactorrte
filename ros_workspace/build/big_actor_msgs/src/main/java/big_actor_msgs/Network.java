package big_actor_msgs;

public interface Network extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "big_actor_msgs/Network";
  static final java.lang.String _DEFINITION = "uint64 timeStamp              # Last update timestamp in milliseconds since the Epoch (1970-01-01 00:00:00.000 UTC).\nuint8 type                    # Network type (Physical Layer).\n\tuint8 NT_NONE=0\n\tuint8 NT_ETHERNET_10M=1\n\tuint8 NT_ETHERNET_100M=2\n\tuint8 NT_ETHERNET_1G=3\n\tuint8 NT_ETHERNET_10G=4\n\tuint8 NT_WIFI_2MB=10\n\tuint8 NT_WIFI_11MB=11\n\tuint8 NT_WIFI_27MB=12\n\tuint8 NT_WIFI_54MB=13\n\tuint8 NT_WIFI_600MB=14\n\tuint8 NT_WIFI_1300MB=15\n\tuint8 NT_WIFI_7000MB=16\n\tuint8 NT_MESH_500kB=20\n\tuint8 NT_ACOUSTIC_7kB=30\n\tuint8 NT_ACOUSTIC_9kB=31\n\tuint8 NT_ACOUSTIC_14kB=32\n\tuint8 NT_ACOUSTIC_31kB=33\n    uint8 NT_PICCOLO=40\n    uint8 NT_AIS=50\nuint32 address                # TCP/IP network address, Piccolo channel number, ...\nuint32 mask                   # TCP/IP network mask or zero if not applicable";
  static final byte NT_NONE = 0;
  static final byte NT_ETHERNET_10M = 1;
  static final byte NT_ETHERNET_100M = 2;
  static final byte NT_ETHERNET_1G = 3;
  static final byte NT_ETHERNET_10G = 4;
  static final byte NT_WIFI_2MB = 10;
  static final byte NT_WIFI_11MB = 11;
  static final byte NT_WIFI_27MB = 12;
  static final byte NT_WIFI_54MB = 13;
  static final byte NT_WIFI_600MB = 14;
  static final byte NT_WIFI_1300MB = 15;
  static final byte NT_WIFI_7000MB = 16;
  static final byte NT_MESH_500kB = 20;
  static final byte NT_ACOUSTIC_7kB = 30;
  static final byte NT_ACOUSTIC_9kB = 31;
  static final byte NT_ACOUSTIC_14kB = 32;
  static final byte NT_ACOUSTIC_31kB = 33;
  static final byte NT_PICCOLO = 40;
  static final byte NT_AIS = 50;
  long getTimeStamp();
  void setTimeStamp(long value);
  byte getType();
  void setType(byte value);
  int getAddress();
  void setAddress(int value);
  int getMask();
  void setMask(int value);
}
