void main()
{

  bool bool1 = true, bool2 = false;

  print("Dart Logical Operators");

  var res = bool1 && bool2;

  print("bool1 && bool2 = " + res.toString());

  res = bool1 || bool2;

  print("bool1 || bool2 = " + res.toString());

  res = !(bool1 && bool2);

  print("!(bool1 && bool2) = " + res.toString());

}