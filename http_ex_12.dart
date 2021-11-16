import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  UserDetails call = new UserDetails();
  call.getUserList();
}

class UserDetails {
  int? id;
  int? userId;
  String? title;
  String? body;

  UserDetails({
    this.id,
    this.userId,
    this.title,
    this.body,
  });

  Future<List<UserDetails>> getUserList() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    var responseData = json.decode(response.body);
    List<UserDetails> users = [];
    for (var singleUser in responseData) {
      UserDetails user = UserDetails(
          id: singleUser["id"],
          userId: singleUser["userId"],
          title: singleUser["title"],
          body: singleUser["body"]);

      users.add(user);
      print(singleUser);
    }
    return users;
  }
}
