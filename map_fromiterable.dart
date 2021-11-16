void main(){
  var studentbio = ['name','age','course','branch'];
  var studentdata = ['shashi','23','b.tech','computer science'];
  var data = Map<String, String>.fromIterables(studentbio, studentdata);
  print(data);
}