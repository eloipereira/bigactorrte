package mavros;

public interface FileRemoveResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/FileRemoveResponse";
  static final java.lang.String _DEFINITION = "bool success\nint32 r_errno";
  boolean getSuccess();
  void setSuccess(boolean value);
  int getRErrno();
  void setRErrno(int value);
}
