import 'package:flutter/material.dart';
import 'package:nike_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeshop = [
     Shoe(name: 'Air Jordan', price: "12000", imagepath: 'lib/images/red.png', description: 'Cool Shoe'),
    Shoe(name: 'Zoom Freek', price: "4500", imagepath: 'lib/images/purple.png', description: 'Signature Shoe'),
    Shoe(name: 'Raider', price: "7900", imagepath: 'lib/images/blackyellow.png', description: 'Raid like a pro..'),
    Shoe(name: 'Blue Star', price: "6000", imagepath: 'lib/images/blue.png', description: 'Comfort'),
   




  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoelist(){
    return shoeshop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }



  void addItemtoCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}