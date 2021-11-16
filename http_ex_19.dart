import 'dart:convert';

import 'package:http/http.dart';

class Employee {
  final int? age;
  final int? salary;
  final String? name;

  Employee({this.age, this.salary,this.name});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      age: json['age'],
      salary: json['salary'],
      name: json['name'],
    );
  }
  Future<Employee> createBio(int age,int salary,String name) async {
    final  response = await post(Uri.parse('http://dummy.restapiexample.com/api/v1/create'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'name': name,
        'age': age,
        'salary': salary,
      }),
    );
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');

    if (response.statusCode == 401) {
      throw Exception('Failed to create bio.');

    }
    return Employee.fromJson(jsonDecode(response.body));

  }
}
void main(){
  Employee call = new Employee();
  call.createBio(23,124234,'Shashi');
}