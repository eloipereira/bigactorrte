package mavros;

public interface FileRemoveDirResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/FileRemoveDirResponse";
  static final java.lang.String _DEFINITION = "bool success\nint32 r_errno";
  boolean getSuccess();
  void setSuccess(boolean value);
  int getRErrno();
  void setRErrno(int value);
}
