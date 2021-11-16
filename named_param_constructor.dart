class UserProfile{
  String name;
  DateTime? birthDate;


  int? get birthYear => birthDate?.year;


  UserProfile({ this.name=" ",  this.birthDate});


  void describe() {
    print('UserProfile: $name');

    var launchDate = this.birthDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $birthYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
void main(){
  var bio =  UserProfile(birthDate: DateTime(1987, 9, 5),name:"kiran");
  bio.describe();
}