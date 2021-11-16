import 'dart:collection';
void main() {
  Set numberSet = new  HashSet();
  numberSet.add(100);
  numberSet.add(20);
  numberSet.add(5);
  numberSet.add(60);
  numberSet.add(70);
  print("Default implementation :$numberSet");
  var data = numberSet.last;
   print(data);
  var data1 = numberSet.first;
  print(data1);
  var data2 = numberSet.add(233);
  print(data2);
  print(numberSet);
  var data3 = numberSet.where((element) => true);
  print(data3);
  var data4 = numberSet.length;
  print(data4);
  var data5 = numberSet.any((element) => false);
  print(data5);
  var data6 = numberSet.contains(56);
  print(data6);
  var data7 = numberSet.followedBy(numberSet);
  print(data7);
  var data8 = numberSet.expand((element) => numberSet);
  print(data8);
  numberSet.clear();
  print(numberSet);
  numberSet.addAll({12,23,34,78});
  print(numberSet);
  numberSet.forEach((element) {
    print(numberSet.first);
  });
  print(numberSet);
}