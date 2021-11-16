void main(){
  var list1 = ["Smith","Peter","Handscomb","Devansh","Cruise"];
  print("Iterating the List Element");
  list1.forEach((item){
    print("${list1.indexOf(item)}: $item");
  });
}