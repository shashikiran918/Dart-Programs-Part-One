
class Gfg {

  int? a;
  int? b;


  void sum(int c, int d)
  {

    this.a = c;
    this.b = d;


    print('Sum of numbers is ${a! + b!}');
  }
}

void main()
{

  Gfg geek = new Gfg();

  // Calling the method sum with the use of object
  geek.sum(21, 12);
}
