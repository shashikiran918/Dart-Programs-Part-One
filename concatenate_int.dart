void main(){

  String str1 = 'Welcome to ';
  double n = -7.8;

  String result = str1 + n.toString();
  print(result);
  bool rest = ( n.isNegative);
  print(rest);
  bool resr = ( n.isFinite);
  print(resr);
  bool resp = ( n.isInfinite);
  print(resp);
  double  err = ( n.sign);
  print(err);
  double resx = ( n.toDouble());
  print(resx);
  int resd = ( n.floor());
  print(resd);
  int resm = ( n.truncate());
  print(resm);

}