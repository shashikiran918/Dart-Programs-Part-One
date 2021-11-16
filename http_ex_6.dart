

import 'dart:convert';
//parse json into nested obj
main() {
  String nestedText =
      '{"title": "Dart ", "description": "Way to parse Json", "author": {"name": "SHASHI", "age": 30}, "tags": [{"name": "dart", "quantity": 12}, {"name": "flutter", "quantity": 25}]}';

 Book book = Book.fromJson(jsonDecode(nestedText));

  print(book);
}
class Book {
  String? title;
  String? description;
  User? author;
  List<Tag>? tags;

 Book(this.title, this.description, this.author, [this.tags]);

  factory Book.fromJson(dynamic json) {
    if (json['tags'] != null) {
      var tagObjsJson = json['tags'] as List;
    //  final parsed = jsonDecode(responseBody)['data'].cast<Map<String, dynamic>>();
      List<Tag> _tags = tagObjsJson.map((tagJson) => Tag.fromJson(tagJson)).toList();

      return Book(
          json['title'] as String,
          json['description'] as String,
          User.fromJson(json['author']),
        _tags
      );
    } else {
      return Book(
          json['title'] as String,
          json['description'] as String,
          User.fromJson(json['author'])
      );
    }
  }

  @override
  String toString() {
    return '{ ${this.title}, ${this.description}, ${this.author}, ${this.tags} }';
  }
}
class User {
  String name;
  int age;

  User(this.name, this.age);

  factory User.fromJson(dynamic json) {
    return User(json['name'] as String, json['age'] as int);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.age} }';
  }
}
class Tag {
  String name;
  int quantity;

  Tag(this.name, this.quantity);

  factory Tag.fromJson(dynamic json) {
    return Tag(json['name'] as String, json['quantity'] as int);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.quantity} }';
  }
}