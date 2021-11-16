
class First {
  static int num = 1;
  void firstFunc(){
    print('hello');
  }
}


class Second extends First{

}

void main(){

  var one = First();

  one.firstFunc();

  print(First.num);

  var second = Second();

  second.firstFunc();
}
