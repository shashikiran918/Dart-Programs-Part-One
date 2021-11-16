class Person {

  final String _name;


  Person(this._name);


  String func(String who) => 'Hello, $who. I am $_name.';
}

class Human implements Person {
  @override
  String get _name => ' ';

  @override
  String func(String who) => 'Hi $who. Do you know who I am?';


}


  String funcShashi(Person person) => person.func('Shashi');


void main() {
  print(funcShashi(Person('bannu')));
  print(funcShashi(Human()));
}