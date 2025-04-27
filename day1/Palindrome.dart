import 'dart:io';

void main(){
  String? ans;
  do{
  print('Palindrome checker');
  print('Enter your word:');

   String word = stdin.readLineSync()?.toLowerCase().trim() ?? '';
 List <String> chars = word.split('');
String palindrome = chars.reversed.join();
print(palindrome);
if(word==palindrome){print("Congrats, its a palindrome!");}else{print("its not a palindrome");}
print("Do you want to check your word again?(Yes/No)");
ans = stdin.readLineSync()?.toLowerCase();
  }while(ans=="yes");
  
}
