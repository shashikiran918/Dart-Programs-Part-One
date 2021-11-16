import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  final response = await http.get(Uri.parse("https://5f383e6541c94900169bfd42.mockapi.io/api/v1/user_details"));
  print(response.body);

  UserDetails userDetails = UserDetails.fromJson(jsonDecode(response.body));
  print(userDetails.name);
  print(userDetails.rating);
}

class UserDetails {
  String? name;
  int? rating;
  int? played;
  int? won;
  int? winningPercentage;
  String? image;

  UserDetails(
      {this.name,
        this.rating,
        this.played,
        this.won,
        this.winningPercentage,
        this.image});

  UserDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    rating = json['rating'];
    played = json['played'];
    won = json['won'];
    winningPercentage = json['winning_percentage'];
    image = json['image'];
  }
  @override
  String toString() {
    return '{ ${this.name}, ${this.rating}, ${this.played}, ${this.won},${this.winningPercentage},${this.image} }';
  }
}