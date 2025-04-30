import 'dart:math';
final Random random = Random();
//Exercise: Flight Booking Simulation
Future<String> isFlightAvailable(bool ifa) async{
  if(ifa==false){throw Exception("No flight is available");}
  else{  await Future.delayed(Duration(seconds:2));
  return'Flight is available';}

}
Future<String> reserveSeat() async {
  await Future.delayed(Duration(seconds:3));
  return"Reserving seat";
}

Future<String> payment()async{
  bool isPaymentSuccess = random.nextBool();
  if(isPaymentSuccess){     await Future.delayed(Duration(seconds:2));
  return "payment successful";}else{
throw Exception("Payment unsuccessful");
}
  }
 

Future<String> confirmBooking() async{
await Future.delayed(Duration(seconds:1));
  return "Booking confirmed";
}

void main() async{
try{
  print("checking flight...");
  String flight = await isFlightAvailable(true);
    print("Reserving seat...");
  String seat = await reserveSeat();
    print("Processing payment...");
  String pay = await payment();
   
  String book = await confirmBooking();
  
print(flight);
  print(seat);
  print(pay);
  print(book);
  
  
}catch(e){print("error:$e");}
}
