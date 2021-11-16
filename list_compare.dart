
class Customer {
  String name;
  int age;

  Customer(this.name, this.age);

  @override
  String toString() {
    return '{ ${this.name}, ${this.age} }';
  }
}

main() {
  List customers = [];
  customers.add(Customer('Jai', 23));
  customers.add(Customer('Ajay', 27));
  customers.add(Customer('Kiran', 25));

  customers.sort((a, b) => a.age.compareTo(b.age));
  print('Sort by Age: ' + customers.toString());

}