void main() {
  var vals = <int>[1, 2, 3, 4, 5, 6];

  vals.remove(1);
  print(vals);

  vals.removeAt(vals.length - 1);
  print(vals);

  vals.removeLast();
  print(vals);

  vals.clear();
  print(vals);

  print('---------------');

  var vals2 = <int>[-2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  vals2.removeWhere((e) => e < 0);
  print(vals2);

  vals2.removeRange(0, 5);
  print(vals2);

  vals2.retainWhere((e) => e > 7);
  print(vals2);
}