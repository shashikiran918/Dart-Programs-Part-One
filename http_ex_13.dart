import 'dart:convert';

import 'package:http/http.dart' as http;

class Post {
  String? craft;
  String? name;

  Post({
    this.craft,
    this.name,
  });

  Future<List<Post>> fetchPost() async {
    final response = await http.get(Uri.parse('http://api.open-notify.org/astros'));
    var  responseData = json.decode(response.body);
    List<Post> people = [];
    for (var data in responseData['people']) {
      Post user = Post(
        craft: data["craft"],
        name:  data['name'],
      );

      people.add(user);
      print(data);
    }
    return people;
  }
}

void main() {
  Post call = new Post();
  call.fetchPost();
}
