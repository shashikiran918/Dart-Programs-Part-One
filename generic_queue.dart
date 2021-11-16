import 'dart:collection';

void main() {
  Queue<int> queue = new Queue<int>();
  print("Default implementation $queue");
  queue.addLast(100);
  queue.addLast(205);
  queue.addLast(315);
  queue.addLast(470);
  queue.removeFirst();
  queue.removeLast();
  queue.add(888);
  queue.add(999);
  print(queue);
  var data = queue.first;
   print(data);
  var datax = queue.last;
  print(datax);
  var datay = queue.elementAt(1);
  print(datay);
  var dataz = queue.take(3);
  print(dataz);
  var dataf = queue.expand((element) => queue);
  print(dataf);
  var datae = queue.followedBy(queue);
  print(datae);
  var datau = queue.where((element) => true);
  print(datau);



  for(int i in queue){
    print(i);
  }
}