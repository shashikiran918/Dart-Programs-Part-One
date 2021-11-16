
class Super{


  void show(){
    print("This is class Super.");
  }
}

class Sub extends Super {


  void show(){
    print("This is class Sub child of Super.");
  }
}

void main() {
  Super data1 = new Super();
  Sub data2 = new Sub();

  data1.show();
  data2.show();
}
