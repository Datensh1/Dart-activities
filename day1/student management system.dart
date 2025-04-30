//Student Management System (OOP + Collections + Inheritance)

class Person{
  String name;
  int age;
Person(this.name,this.age);
 

}
class Student extends Person{
  int id;


  Student(String name,int age,this.id): super (name,age);
   @override
   
    String toString(){
    return "Name:$name||School Id:$id";
  }
}
class Courses{
  List<Student> Bsit = [];
  List<Student> Mech = [];
  List<Student> Ce = [];
  
  void showEnrolledStudents(String CourseName){
    switch(CourseName){
    case "BSIT":
        for (var student in Bsit) {
          print(student.toString());
        }
     break;
    case 'MECH':
    print('Mechanical Engineering: $Mech');
     break;
    case "CE":
    print('Civil Engineering: $Ce');
     break;
     default:
    print('No course found');
    }
  }
}
class studentManagement{
  
  void addStudent(Student student, Courses courses,String CourseName){
    
    switch(CourseName){
      case 'BSIT':
          courses.Bsit.add(student);
    print('You have succesfully add this student');
    break;
       case 'MECH':
          courses.Mech.add(student);
    print('You have succesfully add this student');
    break;
       case 'CE':
          courses.Ce.add(student);
    print('You have succesfully add this student');
    break;
       default:
        print('Course not found.');
    }
 
  }
  void removeStudent(Student student, Courses courses,String CourseName){
        switch(CourseName){
      case 'BSIT':
          courses.Bsit.remove(student);
    print('You have remove add this student');
    break;
       case 'MECH':
          courses.Mech.remove(student);
    print('You have remove add this student');
    break;
       case 'CE':
          courses.Ce.remove(student);
    print('You have remove add this student');
    break;
       default:
        print('Course or student not found.');
    }
 
  }
  void searchStudent(Student student,Courses courses, String CourseName,String searchName){
    switch(CourseName){
      case 'BSIT':
         var foundStudent = courses.Bsit.where((student)=>student.name ==searchName).toList();
         print("You have found:$foundStudent in Bsit");
        break;
    }
 
    
    
  }
  void ShowStudent(Courses courses){
    
    print("These are the student in every courses:");
        print("Bsit:");
               for (var student in courses.Bsit) {
          print(student.toString());
        }
            print("Mech:");
                    for (var student in courses.Mech) {
          print(student.toString());
        }
            print("Ce:");
                    for (var student in courses.Ce) {
          print(student.toString());
        }
  }
  
}

void main(){
  var student1 = Student("Chaewon",20,20313);
  var course =Courses();
  var Sm = studentManagement();

  Sm.addStudent(student1,course,'BSIT');
  course.showEnrolledStudents("BSIT");
  Sm.searchStudent(student1,course,"BSIT","Chaewon");
  Sm.ShowStudent(course);
  
} 