package mavros;

public interface FileListRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/FileListRequest";
  static final java.lang.String _DEFINITION = "# FTP::List\n#\n# :success:\tindicates success end of request\n# :r_errno:\tremote errno if applicapable\n\nstring dir_path\n";
  java.lang.String getDirPath();
  void setDirPath(java.lang.String value);
}
