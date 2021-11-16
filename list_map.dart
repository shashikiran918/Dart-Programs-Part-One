import 'dart:math';

void main() {
  var vals = <int>[1, 2, 3, 4, 5];

  var powered = vals.map((e) => pow(e, 2));

  for (var e in powered) {
    print(e);

  }



}