import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  int? id;
  String? email;
  String? firstname;
  String? lastname;
  String? avatar;

  User({
    this.id,
    this.email,
    this.firstname,
    this.lastname,
    this.avatar,
  });

  Future<List<User>> getListUser() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users?delay=8'));
    var responseData = json.decode(response.body);
    List<User> people = [];
    for (var data in responseData['data']) {
      User user = User(
        id: data["id"],
        email: data['email'],
        firstname: data['firstname'],
        lastname: data['lastname'],
        avatar: data['avatar'],

      );
      people.add(user);
      print(data);
    }
    return people;
  }
}

void main() {
  User call = new User();
  call.getListUser();
}