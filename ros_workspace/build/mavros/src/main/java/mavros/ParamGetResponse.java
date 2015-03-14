package mavros;

public interface ParamGetResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/ParamGetResponse";
  static final java.lang.String _DEFINITION = "bool success\nint64 integer\nfloat64 real";
  boolean getSuccess();
  void setSuccess(boolean value);
  long getInteger();
  void setInteger(long value);
  double getReal();
  void setReal(double value);
}
