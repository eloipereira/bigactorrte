package mavros;

public interface ParamSet extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/ParamSet";
  static final java.lang.String _DEFINITION = "# Request set parameter value\n#\n# Set one integer or float field\n#\n# if integer != 0: it is integer value\n# else if real != 0.0: it is float value\n# else: it is zero.\n\nstring param_id\nint64 integer\nfloat64 real\n---\nbool success\nint64 integer\nfloat64 real\n";
}
