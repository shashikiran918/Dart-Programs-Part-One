import 'dart:convert';
//Parsing Json object
class Student {
  final String? name;
  final int? age;

  Student({this.name, this.age});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(name: json['name'], age: json['age']);
  }


  @override
  String toString() {
    return 'Student: {name = $name, age = $age}';
  }
}
void testParseJsonObject() {
  final jsonString = r'''
      {
        "name": "Shashi",
        "age": 20
      }
  ''';

  final json = jsonDecode(jsonString);
  final student = Student.fromJson(json);

  print(student);
}
void main() {
  testParseJsonObject();
}