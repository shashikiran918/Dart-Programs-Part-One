void main() {
  var student = new Map();
  student['name'] = 'Shashi';
  student['age'] = 23;
  student['course'] = 'B.tech';
  student['Branch'] = 'Computer Science';
  print(student);
  print(student['age']);
  print(student['college']);
  print(student[' ']);
  for( var element in student.entries){
    print(element);

  }
}
