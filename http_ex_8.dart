import 'dart:convert';

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

void testParseJSONArray() {
  final jsonString = r'''
      [
        {
          "name": "shashi",
          "age": 20
        },
        {
          "name": "kiran",
          "age": 22
        },
        {
          "name": "Abhi",
          "age": 28
        },
        {
          "name": "rajesh",
          "age": 29
        }
      ]
  ''';

  final json = jsonDecode(jsonString);

  if (json != null) {
    json.forEach((element) {
      final student = Student.fromJson(element);
      print(student);
    });
  } else {
    print("No Data Found ");
  }
}

void main() {
  testParseJSONArray();
}
