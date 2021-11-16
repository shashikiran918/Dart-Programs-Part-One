void main() {
  Set <int>numberSet = new  Set<int>();
  numberSet.add(20);
  numberSet.add(10);
  numberSet.add(30);
  numberSet.add(40);
  numberSet.add(50);
  numberSet.add(900);

  print("Default implementation  :$numberSet");
  var data = numberSet.isEmpty;
  print(data);
  var dat = numberSet.isNotEmpty;
  print(dat);
  var da = numberSet.contains(30);
  print(da);
  var datar = numberSet.elementAt(3);
  print(datar);
  var dataf = numberSet.first;
  print(dataf);
  var dataw = numberSet.last;
  print(dataw);
  var datac = numberSet.expand((element) => numberSet);
  print(datac);
  var data2 = numberSet.where((element) => true);
  print(data2);
  var data3 = numberSet.followedBy(numberSet);
  print(data3);
  var data4 = numberSet.remove(900);
  print(data4);
  var data5 = numberSet.any((element) => true);
  print(data5);
  
  print(numberSet);


  for(var i in numberSet) {
    print(i);
  }
}