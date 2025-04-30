//Inventory Management System
class InventoryItem{
  String name;
  int price;
  int quantity;
  InventoryItem(this.name,this.price,this.quantity);
  void add(){
    print("You have succesfully added this item");
  }
  void remove(){
      print("You have succesfully removed this item");
  }
  void show(){
       print("this is all the item");
  }
  void update(){
       print("You have succesfully update this item");
  }
  @override 
  String toString(){
    return '$name';
  }
}
class Electronics extends InventoryItem{
  String warrantyPeriod;
  
  Electronics(String name,int price,int quantity,this.warrantyPeriod):super(name,price,quantity);
  void addItem(InventoryItem ii, Ims ims){
  ims.Inventory.add(ii);
    super.add();
  }
    
  void removeItem(InventoryItem ii, Ims ims){
   ims.Inventory.remove(ii);
    super.remove();
  }

  void updatePrice(InventoryItem ii,int newprice){
if(ii.name == ii.name){ii.price= newprice;
  print("newprice");
}
  
}
  
  
  
  void showDetails() {
    print(
      "Name: $name || Price: $price || Quantity: $quantity || Warranty: $warrantyPeriod"
    );
  }
}


  


class Clothing extends InventoryItem{

  String size;
  
  Clothing(String name,int price,int quantity,this.size):super(name,price,quantity);
   void addItem(InventoryItem ii, Ims ims){
  ims.Inventory.add(ii);
    super.add();
  }
    
  void removeItem(InventoryItem ii, Ims ims){
   ims.Inventory.remove(ii);
    super.remove();
  }

  void updatePrice(InventoryItem ii,int newprice){
if(ii.name == ii.name){ii.price= newprice;
  print("newprice");
}
  
}
  
  
  
  void showDetails() {
    print(
      "Name: $name || Price: $price || Quantity: $quantity || Warranty: $size"
    );
  }
}
class Groceries extends InventoryItem{
  int expirationDate;

  Groceries(String name,int price,int quantity,this.expirationDate):super(name,price,quantity);
    void addItem(InventoryItem ii, Ims ims){
  ims.Inventory.add(ii);
    super.add();
  }
    
  void removeItem(InventoryItem ii, Ims ims){
   ims.Inventory.remove(ii);
    super.remove();
  }

  void updatePrice(InventoryItem ii,int newprice){
if(ii.name == ii.name){ii.price= newprice;
  print("newprice");
}
  
}
  
  
  
  void showDetails() {
    print(
      "Name: $name || Price: $price || Quantity: $quantity || Warranty: $expirationDate"
    );
  }
}


class Ims{
  List<InventoryItem> Inventory=[];
  void addItem(InventoryItem ii){
   Inventory.add(ii);
   
  }
    void removeItem(InventoryItem ii){
   Inventory.remove(ii);
   
  }
  
  void updatePrice(InventoryItem ii,int newprice){
for(var item in Inventory){if(item.name == ii.name){item.price= newprice;
  print("newprice");
}
  
}}
 void showInventory() {
    for (var item in Inventory) {
      if (item is Electronics) {
        item.showDetails();
      } else {
        print("Name: ${item.name} || Price: ${item.price} || Quantity: ${item.quantity}");
      }
    }
  }
}
void main() {
  var ims = Ims();

  // ELECTRONICS ITEMS
  var electronics = Electronics("", 0, 0, "");
  var e1 = Electronics("Electric Fan", 1500, 2, "1 year");
  var e2 = Electronics("Aircon", 5500, 5, "2 years");
  var e3 = Electronics("Washing Machine", 7000, 3, "2 years");
  var e4 = Electronics("Microwave", 3000, 4, "1 year");
  var e5 = Electronics("Television", 8000, 6, "3 years");
  var e6 = Electronics("Refrigerator", 10000, 2, "3 years");
  var e7 = Electronics("Blender", 1200, 10, "6 months");
  var e8 = Electronics("Rice Cooker", 1800, 8, "1 year");
  var e9 = Electronics("Water Dispenser", 2500, 3, "1 year");
  var e10 = Electronics("Laptop", 30000, 1, "1 year");

  var electronicItems = [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10];
  for (var item in electronicItems) {
    electronics.addItem(item, ims);
  }

  // CLOTHING ITEMS
  var clothing = Clothing("", 0, 0, "");
  var c1 = Clothing("T-Shirt", 300, 10, "M");
  var c2 = Clothing("Jeans", 1000, 5, "L");
  var c3 = Clothing("Jacket", 1500, 3, "XL");
  var c4 = Clothing("Sweater", 1200, 2, "M");
  var c5 = Clothing("Shorts", 500, 8, "S");
  var c6 = Clothing("Dress", 2000, 4, "M");
  var c7 = Clothing("Skirt", 800, 6, "S");
  var c8 = Clothing("Blouse", 900, 5, "L");
  var c9 = Clothing("Polo", 1100, 3, "L");
  var c10 = Clothing("Cap", 350, 7, "Free Size");

  var clothingItems = [c1, c2, c3, c4, c5, c6, c7, c8, c9, c10];
  for (var item in clothingItems) {
    clothing.addItem(item, ims);
  }

  // GROCERY ITEMS
  var groceries = Groceries("", 0, 0, 0);
  var g1 = Groceries("Milk", 80, 20, 202506);
  var g2 = Groceries("Bread", 50, 15, 202505);
  var g3 = Groceries("Eggs", 150, 30, 202505);
  var g4 = Groceries("Rice", 1200, 10, 202601);
  var g5 = Groceries("Sugar", 70, 25, 202601);
  var g6 = Groceries("Salt", 30, 50, 202701);
  var g7 = Groceries("Canned Tuna", 100, 40, 202603);
  var g8 = Groceries("Sardines", 90, 35, 202604);
  var g9 = Groceries("Soy Sauce", 60, 20, 202605);
  var g10 = Groceries("Vinegar", 60, 18, 202606);

  var groceryItems = [g1, g2, g3, g4, g5, g6, g7, g8, g9, g10];
  for (var item in groceryItems) {
    groceries.addItem(item, ims);
  }

  // Show inventory
  ims.showInventory();
}




















































