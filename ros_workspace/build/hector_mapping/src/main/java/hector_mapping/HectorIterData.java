package hector_mapping;

public interface HectorIterData extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "hector_mapping/HectorIterData";
  static final java.lang.String _DEFINITION = "float64[9] hessian\nfloat64 conditionNum\nfloat64 determinant\nfloat64 conditionNum2d\nfloat64 determinant2d\n";
  double[] getHessian();
  void setHessian(double[] value);
  double getConditionNum();
  void setConditionNum(double value);
  double getDeterminant();
  void setDeterminant(double value);
  double getConditionNum2d();
  void setConditionNum2d(double value);
  double getDeterminant2d();
  void setDeterminant2d(double value);
}
