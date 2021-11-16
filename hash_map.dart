import 'dart:collection';
main() {
  var accounts = new HashMap();
  accounts['dept']='HR';
  accounts['name']='Tom';
  accounts['email']='icore@xyz.com';
  print('Map after adding  entries :$accounts');
  var data = accounts.keys;
  print(data);
  var dat = accounts.values;
  print(dat);
   var data1 = accounts.isEmpty;
  print(data1);
  var data2 = accounts.containsValue('Tom');
  print(data2);
  var data3 = accounts.update('name', (tom) => 'bannu');
  print(data3);
  print(accounts);
  var data4 = accounts.remove('name');
  print(data4);
  print(accounts);
  var data5= accounts.containsKey('name');
  print(data5);
  accounts.addAll(<String, int> {'three': 3, 'four': 4, 'five': 5});
  print(accounts);
   accounts.removeWhere((key, value) => true);
  print(accounts);
  accounts.addAll(<String, int> {'three': 3, 'four': 4, 'five': 5});
  print(accounts);
 accounts.forEach((key, value) {
   print(accounts.keys);

 });

}