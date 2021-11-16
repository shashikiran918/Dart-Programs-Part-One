void main() {
  var vals = <int>[1, 2, 3, 4, 5];

  var e1 = vals.first;
  var e2 = vals.last;
  var e3 = vals.elementAt(1);

  var len = vals.length;

  print('There are $len elements in the list');
  print('The first element is $e1');
  print('The last element is $e2');
  print('The second element is $e3');

  for (var element in vals)
    print(element);

}