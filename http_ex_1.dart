import 'dart:io';
import 'dart:convert';

void main() async {

  var request = await HttpClient().getUrl(Uri.parse('https://gorest.co.in/public/v1/users'));

  var response = await request.close();

  await for (var elements in response.transform(Utf8Decoder())) {
    print(elements);

  }
}