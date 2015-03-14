package hector_mapping;

public interface HectorDebugInfo extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_mapping/HectorDebugInfo";
  static final java.lang.String _DEFINITION = "HectorIterData[] iterData";
  java.util.List<hector_mapping.HectorIterData> getIterData();
  void setIterData(java.util.List<hector_mapping.HectorIterData> value);
}
