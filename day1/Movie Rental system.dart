//Movie Rental System (OOP + Polymorphism + Inheritance

class Movie{
  String title;
  String Director;
  int RentalPrice;
  Movie(this.title,this.Director,this.RentalPrice);
  void rent(){
   
      print("You have rented '$title' directed by $Director for \$${RentalPrice}.");
  }
   @override
    String toString(){
      return " $title";
    }
}
class ActionMovie extends Movie{
  ActionMovie(String title, String Director, int RentalPrice): super(title,Director,RentalPrice);
  @override
  void rent(){
    
  }
}
class ComedyMovie extends Movie{
 ComedyMovie(String title, String Director, int RentalPrice): super(title,Director,RentalPrice);
  @override
  void rent(){
    
  }
}
class Customer{
  List<Movie> RentedMovies=[];
  String name;
  int age;

  Customer(this.name,this.age);
     @override
    String toString(){
      return "$name";
    }
  void myRentedMovies(){
    print("$name rented movies are: $RentedMovies");
  }
}
class RentalSystem{
  List<Movie> Movielist = [];
  List<Movie> RentedList = [];
  void addMovies(Movie movie){
    Movielist.add(movie);
 print("You added: $movie");
  }
    void showMovies(){
  print("Rented movies: $RentedList");
 print("Available movies: $Movielist");
  }
void rentMovietoCustomer(Customer customer, Movie movie){
  if(Movielist.contains(movie)){customer.RentedMovies.add(movie);
RentedList.add(movie);
Movielist.remove(movie);
print("$customer rented this $movie");}else{print("There is no movie Available");}

}
}
void main(){
  var movie1 = Movie('Harry Potter: The Sorcerer Stone',"Jiheon",500);
  var movie2 = Movie('Harry Potter: The Chamber of Secrets',"Jiheon",1000);
    var movie3 = Movie('Harry Potter: The Chamber of Secrets',"Jiheon",1000);
  var cdr = RentalSystem();
  var per1 =Customer("Oheb",20);
  cdr.addMovies(movie1);
    cdr.addMovies(movie2);

  cdr.rentMovietoCustomer(per1,movie1);
 

    cdr.showMovies();
      cdr.rentMovietoCustomer(per1,movie2);
    
      per1.myRentedMovies();
    
    
    
    
    
    
    
    
    
    
    
}
