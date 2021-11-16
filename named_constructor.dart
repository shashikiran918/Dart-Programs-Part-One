void main() {
  Student std1 = new Student();
  Student std2 = new Student.namedConst("Computer Science");
}

class Student{

  Student(){
    print("The example of the named constructor");
  }

  Student.namedConst(String branch){
    print("The branch is: $branch");

  }
}