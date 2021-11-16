import 'dart:collection';

main() {
  LinkedHashMap mapA = LinkedHashMap();

  if (mapA is LinkedHashMap) {
    print("LinkedHashMap is working!");
  }

  Map<String, int> map1 = {'zero': 0, 'one': 1, 'two': 2};
  print(map1);
  var data = map1.length;
  print(data);
  var data1 = map1.keys;
  print(data1);
  var data2 = map1.values;
  print(data2);
  var data3 = map1.putIfAbsent('one', () => 3);
  print(data3);
  var data4 = map1.update('two', (value) => 34);
  print(data4);
  print(map1);
  var data5 = map1.containsValue(1);
  print(data5);
  var data6 = map1.containsKey('one');
  print(data6);
  var data7 = map1.isNotEmpty;
  print(data7);
  map1.addAll(<String, int>{'three': 3, 'four': 4, 'five': 5});
  print(map1);
  var data8 = map1.remove('five');
  print(data8);
  print(map1);
  var data9 = map1.isEmpty;
  print(data9);
  var datar = map1.entries;
  print(datar);
  map1.forEach((key, value) {
    print(map1.values);
  });
  map1.clear();
  print(map1);
}
