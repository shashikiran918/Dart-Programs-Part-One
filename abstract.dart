abstract class Ksk{
  void say();
  void write();
}
class Shashi extends Ksk{

  void say(){
    print("yo");
  }
  void write(){
    print("hi");
  }
}
void main(){
  Shashi dot = new Shashi();

  dot.say();
  dot.write();
}