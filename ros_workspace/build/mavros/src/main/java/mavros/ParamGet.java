package mavros;

public interface ParamGet extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/ParamGet";
  static final java.lang.String _DEFINITION = "# Request parameter from attached device\n#\n# Integer and float fields:\n#\n# if integer != 0: it is integer value\n# else if real != 0.0: it is float value\n# else: it is zero.\n\nstring param_id\n---\nbool success\nint64 integer\nfloat64 real\n";
}
