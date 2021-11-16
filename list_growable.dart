void main() {

  List<int> myList = <int>[];
  myList.add(42);
  myList.add(2018);
  print(myList);
  print(myList.length);
  print(myList.last);
  print(myList.first);

  myList.add(2019);
  print(myList);
  print(myList.length);
}