import 'dart:convert';

import 'package:http/http.dart';

class Employee {
  final String? name;
  final String? job;

  Employee({this.name, this.job});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      name: json['name'],
      job: json['job'],
    );
  }

  Future<Employee> createBio(String name, String job) async {
    final response = await post(
      Uri.parse('https://reqres.in/api/users/v1/create'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(<String,String>{
        'name': name,
        'job': job,
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

void main() {
  Employee call = new Employee();
  call.createBio('Shashi', 'Software Engineer');
}