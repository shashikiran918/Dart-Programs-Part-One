void main(){
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seta', 'Kathe', 'Lary'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };
  print(names);
  print(uniqueNames);
  print(pages);
  var data = names.reversed;
  print(data);
  var data1 = uniqueNames.expand((element) => uniqueNames);
  print(data1);
  var data2 = pages.keys;
  print(data2);
  var data3 = pages.values;
  print(data3);
  var data4 = names.every((element) => true);
  print(data4);
  var data5 = pages.containsKey('robots.txt');
  print(data5);
  var data6 = uniqueNames.last;
  print(data6);
  var data8 = uniqueNames.followedBy(uniqueNames);
  print(data8);
  var data7 = names.expand((element) => names);
  print(data7);
  names.forEach((element) {
    print(names.length);
  });
  var data9 = pages.containsValue('Homepage');
  print(data9);
  var dates = uniqueNames.elementAt(0);
  print(dates);
  var datep = names.elementAt(0);
  print(datep);
  var dsf = uniqueNames.contains('Seta');
  print(dsf);

}