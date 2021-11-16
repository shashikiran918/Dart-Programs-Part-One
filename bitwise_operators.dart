void main() {
  var num1 = 40;
  var num2 = 5;
  var num3 =0;
  print("Dart Bitwise Operators");


  print("num1 & num2 = ${(num1 & num2)}");


  print("num1 | num2 = ${(num1 | num2)}");


  print("num1 ^ num2 = ${(num1 ^ num2)} " );

  print("~num1 = ${(~num1)}" );

  num3 = num1 <<  2;
  print("num1 << 2 = $num3");


  num3 = num1 >>  2;
  print("num1 >> 2  = $num3" );
}