package mavros;

public interface FileListResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/FileListResponse";
  static final java.lang.String _DEFINITION = "FileEntry[] list\nbool success\nint32 r_errno";
  java.util.List<mavros.FileEntry> getList();
  void setList(java.util.List<mavros.FileEntry> value);
  boolean getSuccess();
  void setSuccess(boolean value);
  int getRErrno();
  void setRErrno(int value);
}
