package mavros;

public interface ParamGetRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/ParamGetRequest";
  static final java.lang.String _DEFINITION = "# Request parameter from attached device\n#\n# Integer and float fields:\n#\n# if integer != 0: it is integer value\n# else if real != 0.0: it is float value\n# else: it is zero.\n\nstring param_id\n";
  java.lang.String getParamId();
  void setParamId(java.lang.String value);
}
