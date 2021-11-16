import 'dart:convert';

import 'package:http/http.dart';

class Album {
  final int? id;
  final String? title;

  Album({this.id, this.title,});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
  Future<Album> createAlbum(String title) async {
    final  response = await post(Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');

    if (response.statusCode == 201) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }

  }
}
void main(){
  Album call = new Album();
  call.createAlbum('Shashi nbjfbv njssvmm kihifhif uhfhiank ');
}