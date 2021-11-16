
import 'package:http/http.dart';

class Data{

  Future<void> makePostRequest() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final headers = {"Content-type": "application/json"};
    final json = '{"title": "Hello", "body": "body text", "userId": 1}';
    final response = await post(url, headers: headers, body: json);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
  }
}
void main(){
  Data call = new Data();
  call.makePostRequest();
}