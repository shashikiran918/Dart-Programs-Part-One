
import 'dart:convert';

import 'package:http/http.dart';

class Post {
  final String? userId;
  final int? id;
  final String? title;
  final String? body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
  Future createPost() async {
    return await post(Uri.parse('https://jsonplaceholder.typicode.com/posts'), body: body).then((Response response) {
      final int statusCode = response.statusCode;
      print('Status code: ${response.statusCode}');
      print('Body: ${response.body}');
      if (statusCode < 200 || statusCode > 400) {
        throw new Exception("Error while fetching data");
      }
      return Post.fromJson(json.decode(response.body));
    });

  }
}
void main(){
  Post call = new Post();
  call.createPost();
}