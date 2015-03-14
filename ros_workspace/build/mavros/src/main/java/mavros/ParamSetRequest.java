package mavros;

public interface ParamSetRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/ParamSetRequest";
  static final java.lang.String _DEFINITION = "# Request set parameter value\n#\n# Set one integer or float field\n#\n# if integer != 0: it is integer value\n# else if real != 0.0: it is float value\n# else: it is zero.\n\nstring param_id\nint64 integer\nfloat64 real\n";
  java.lang.String getParamId();
  void setParamId(java.lang.String value);
  long getInteger();
  void setInteger(long value);
  double getReal();
  void setReal(double value);
}
