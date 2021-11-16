import 'dart:io';
void main() {

  magic(4);
  magic(7);

}

void magic(int n) {
  for (int i = 1; i <= n; i++)
  {
    for (int j = n - i; j >= 1; j--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++)
    {
      stdout.write(j);
    }
    for(int j = i - 1;j >= 1;j--)
    {
      stdout.write(j);
    }
    stdout.writeln();
  }
  for (int i = n - 1 ; i >= 1; i--)
  {
    for (int j = n - i; j >= 1; j--) {

      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++)
    {
      stdout.write(j);
    }
    for(int j = i - 1;j >= 1;j--)
    {
      stdout.write(j);
    }
    stdout.writeln();
  }
}