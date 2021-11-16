import 'package:http/http.dart' as http;
void main() async {

  var  response = await http.get(Uri.parse('https://gorest.co.in/public/v1/users'));
  print(response.body);

// Sending a GET request using .read
 var  data = await http.read(Uri.parse('https://gorest.co.in/public/v1/users'));
  print(data);
}