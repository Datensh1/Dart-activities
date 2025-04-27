
//Online Store Shopping Cart (OOP + Lists/Maps)
class Product{

  String name;
  int price;
  int quantity;
  Product(this.name,this.price,this.quantity);
  @override
  String toString(){
  return 'Name:$name Price:$price Quantity:$quantity';
  }
}
class ShoppingCart{
  Map<String, Product> products;
  ShoppingCart(this.products);
  void addProduct(Product product){
products[product.name] = product;

  }
  void removeProduct(Product product){
            products.remove(product.name);
  }
  
  void showProduct(){
    print(products);
  }
  void totalPrice(){
    int total= 0;
 for( var product in products.values){
   total += product.price*product.quantity;
 } print(total);
  }
}

void main(){
  var p1 = Product('Apple',100,1);
  var p2 = Product('Banana',120,10);
  var p3 = Product('Orange',50,10);
  var user = ShoppingCart({});
  user.addProduct(p1);
    user.addProduct(p2);
      user.addProduct(p3);
  user.removeProduct(p1);
    user.removeProduct(p2);
user.showProduct();
user.totalPrice();
}