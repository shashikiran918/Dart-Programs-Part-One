void main() {
  var nums = <int>[1, 2, 3];
  print('$nums');

  var items = [1, 2.0, "three"];
  print('$items ');

  List<dynamic> items2 = List.of(items);
  print('$items2 ');

  var vals = [1, 2.0, 3.0, 1.0, 4, 5, 6, 7, 8.0];
  print('$vals ');
}
