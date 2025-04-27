import 'dart:io'; // This allows user input from the console

void main() {
/*Mini Project Idea: K-Pop Quiz App (Console Version)
Build a simple K-pop quiz app in Dart (console-based). Here's what to include:
🧠 Features:
    User Verification: Ask if the user is logged in (bool check).
    Quiz Questions: Store 3 questions in a Map<String, String>, where keys = questions, values = correct answer.
    Score Counter: Count and show score after the quiz.
    Fandom Switch: Ask the user's fandom and greet them.
    Replay Option: Ask if they want to play again (do-while loop).*/
String? ans;
do{
    print("Are you logged in?");
  
bool isUserLoggedIn=true;


if(isUserLoggedIn== true){print("You are logged in");}else{print("you are not logged in!");}

Map<String,String> questions={
  "When did izna debut? ": "2025",
  "When did Illit debut? ": "2024",
  "When did Stray Kids debut? ": "2018",
};
int score = 0;
for (final q in questions.keys){
  print(q);
String? answer = stdin.readLineSync();
if(answer==questions[q]){
 
  score++;
  
  }
}print("You scored $score of ${questions.length}");
print("What is your fandom?");
String? Fandom = stdin.readLineSync();

switch(Fandom){
  case "Naya":print("Hello, Naya! ");break;
   case "Gllit":print("Hello, Naya! ");break;
    case "Stay":print("Hello, Naya! ");break;
    default: print("Hello, $Fandom");break;
}
print("Do you want to play again?(y/n)");
 ans = stdin.readLineSync()?.toLowerCase();

}while(ans=="Y");
}