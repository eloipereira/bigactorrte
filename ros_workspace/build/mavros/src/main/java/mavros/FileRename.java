package mavros;

public interface FileRename extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros/FileRename";
  static final java.lang.String _DEFINITION = "# FTP::Rename\n#\n# :success:\tindicates success end of request\n# :r_errno:\tremote errno if applicapable\n\nstring old_path\nstring new_path\n---\nbool success\nint32 r_errno\n";
}
