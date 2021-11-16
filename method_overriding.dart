class College{

  String? name;
  int? rollno;

  void stu_details(name,rollno){
    this.name = name;
    this.rollno = rollno;


  }

  void display(){
    print("The student name:$name");
    print("The student rollno: $rollno");
    print("The result is passed");

  }

}

class Student extends College{

  void stu_details(name,rollno){
    this.name = name;
    this.rollno = rollno;

  }

  void show(){
    print("The student name:$name");
    print("The student rollno: $rollno");

    print("The result is failed");

  }
}

void main(){

  Student  st = new Student();
  st.stu_details("Joseph",101);
  st.show();


  College cg = new College();
  cg.stu_details("Shashi",102);
  cg.display();
}  