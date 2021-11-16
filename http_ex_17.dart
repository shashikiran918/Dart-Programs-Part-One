import 'dart:convert';
import 'dart:io';


class Data {

  Future<void> makePostRequest() async {

    final client = HttpClient();
    final request = await client.postUrl(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    request.headers.set(
        HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
    request.write('{"title": "Fool can be awesome","body": "Barfi", "userId": 99}');

    final response = await request.close();

    await for(var elements in response.transform(Utf8Decoder())){
      print(elements);
    }
  }
}

void main(){
  Data call = new Data();
  call.makePostRequest();
}

