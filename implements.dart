
class First {

  void firstFunc(){
    print('hello');
  }
}

class Second implements First{

  @override
  void firstFunc(){
    print('We had to declare the methods of implemented class');
  }
}

void main(){

  var one = First();


  one.firstFunc();

  var second = Second();

  second.firstFunc();
}
