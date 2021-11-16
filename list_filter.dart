void main() {
  var vals = <int>[-1, 3, 2, 0, 1, -3, 4, 3, 5];
  var positive = vals.where((e) => e > 0);
  print(positive);

  var words = <String>["wolf", "sky", "falcon", "cloud", "wood", "oak"];
  var w = words.where((e) => e.length == 3);
  print(w);

  var e1 = words.firstWhere((e) => e.startsWith('w'));
  print(e1);

  var e2 = words.lastWhere((e) => e.startsWith('w'));
  print(e2);
}