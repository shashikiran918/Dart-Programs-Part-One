


void main() {
  var  myList = [15, 26, 85, 1, 3, 23];
  var  newList = [];
  var  n = 0;
  var  min = myList[n];
  while(myList.isNotEmpty){
    for(var x in myList) {
      if (x < min) {
        min = x;
        newList.add(min);
      }
      myList.removeWhere((e) => newList.contains(min));
    }
      print(newList);

  }




  }

