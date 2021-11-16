void main() {
  var integers = [for (var i = 1; i < 10; i++) i];
  var squares = [for (var n in integers) n * n];
  var evens = [
    for (var n in integers)
      if (n % 2 == 0)
        n
  ];

  print(integers);
  print(squares);
  print(evens);
}