package mavros;

public interface ParamSetResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/ParamSetResponse";
  static final java.lang.String _DEFINITION = "bool success\nint64 integer\nfloat64 real";
  boolean getSuccess();
  void setSuccess(boolean value);
  long getInteger();
  void setInteger(long value);
  double getReal();
  void setReal(double value);
}
