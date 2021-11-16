void main() {
  var vals = <int>[1, 2, 3];

  vals.add(4);
  vals.addAll([5, 6, 7]);

  vals.insert(0, 0);
  vals.insertAll(vals.length, [8, 9, 10]);

  print(vals);
}