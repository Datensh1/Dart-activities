//Library Management System

class Book{
  String title;
  String author;
  Book(this.title,this.author);
 
  @override
String toString() {
  return 'Title: $title, Author: $author';
}
}
class Member{
  String name;
  int memberId;
  List<Book> booksBorrowed;
  Member(this.name,this.memberId,this.booksBorrowed);
 void checkedOut(Book book,Library library){
   if(library.availableBooks.contains(book)){
     library.availableBooks.remove(book);
booksBorrowed.add(book); 
   print('You have checked out this book: $book ');
   
 }}
  void returnBook(Book book,Library library){
    if(booksBorrowed.contains(book)){
       booksBorrowed.remove(book);
        library.availableBooks.add(book);
     print('You returned this: $book ');
    }
   
  }
  void showBorrowedBooks(){
    print(" User Available books: $booksBorrowed");
  }
}

class Library{
  String name;
  List<Book> availableBooks;
  Library({this.name="Korea Library", required this.availableBooks});
   void addBook(Book book){
availableBooks.add(book); 
 
   
   
 }
  void showAvailableBooks(){   
    if (availableBooks.isEmpty) {
      print("No available books in the library.");
    } else {
      print("Available books in the library: $availableBooks");
    }

}


  
}
void main(){
 var libro = Book("Hamlet","Shakespeare");
  var per = Member('Jiheon',2003,[]);
  var lib = Library(availableBooks:[]);
  lib.addBook(libro);


  per.checkedOut(libro,lib);

  per.showBorrowedBooks();
  lib.showAvailableBooks();
}
