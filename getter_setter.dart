
class Gfg {

  String? shashi;


  String get name {
    return shashi!;
  }


  set name (String name) {
    this.shashi = name;
  }
}

void main()
{

  Gfg bio = new Gfg();

  bio.name = "icore";


  print("Welcome to ${bio.name}");
}
