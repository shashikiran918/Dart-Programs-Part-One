void main() {
  List <String> logStr =  <String>[];
  logStr.add("CHECK");
  logStr.add("ERROR");
  logStr.add("INFO");
  print(logStr);
 var data = logStr.reversed;
 print(data);
 var res = logStr.elementAt(0);
 print(res);
 var was = logStr.expand((element) => logStr);
 print(was);
 var wat = logStr.contains('error');
 print(wat);
 var war = logStr.removeAt(1);
 print(war);
 var waf = logStr.where((element) => true);
 print(waf);
  var waz = logStr.followedBy(logStr);
  print(waz);


  for (String i in logStr) {
    print(i);
  }
}