import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  var query = 'title';
  var response = await http
      .get(Uri.parse('https://www.googleapis.com/books/v1/volumes?q=$query'));
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books : $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
