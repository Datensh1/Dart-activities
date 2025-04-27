 //Task Manager (OOP + Inheritance + Abstract Classes)
 
 
 abstract class Task{
String title;
String description;
int dueDate;
Task(this.title,this.description,this.dueDate);
@override 
String toString(){
  return "Title:$title||Description:$description||Due date:$dueDate";
}
}

class PersonalTask extends Task{

  PersonalTask(String title,String description,int dueDate):super(title,description,dueDate);
  
}
class WorkTask extends Task{

  WorkTask(String title,String description,int dueDate):super(title,description,dueDate);
}
class User{
  String name;
  int userId;
  User(this.name,this.userId);
}
class Admin extends User{
  Admin(String name,int userId): super(name,userId);
void assignTask(Member member,Task task){
member.tasks.add(task);

}
}
class Member extends User{
  List <Task>tasks = [];
  List <Task> completed =[];
  Member(String name,int userId): super(name,userId);

  void completedTask(Task task){
    tasks.remove(task);
    completed.add(task);
 
  }
    void showCompletedTask(){
         print("completed task:$completed");

  }
  void clearAllCompletedTask(){
    completed.clear();
    print('You have remove all completed task: $completed');
  }
}
void main(){
  var manager = Admin("Jiheon",10290);
  var employee = Member("vincent",11029);
  var personalTask = PersonalTask("Buy groceries", "Buy groceries for the weekend", 20250501);
  manager.assignTask(employee,personalTask);
  manager.assignTask(employee,personalTask);
  
    employee.showCompletedTask();
    
  
      employee.showCompletedTask();
    
      employee.completedTask(personalTask);
 
      employee.clearAllCompletedTask();
           employee.showCompletedTask();
}