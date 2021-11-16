import 'dart:convert';
//parse JSON array into List
main() {
  String arrayText = '{"tags": ["dart", "flutter", "json"]}';

  var tagsJson = jsonDecode(arrayText)['tags'];
  List<String>? tags = tagsJson != null ? List.from(tagsJson) : null;

  print(tags);
}
