import 'package:flutter/material.dart';
import 'package:shop_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max ',
      price: '240',
      description: "The forward-thinking design of his latest signature shoe",
      imagePath: 'lib/images/nikeAirMax.png',
    ),
    Shoe(
      name: 'Air Max Plus',
      price: '320',
      description: "It is just another level",
      imagePath: 'lib/images/nikeAirMaxPlus.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '220',
      description: "Despite of short time this shoe has become classic",
      imagePath: 'lib/images/nikeAirJordan.png',
    ),
    Shoe(
      name: 'Silver Wing',
      price: '280',
      description: "You will have wings with this shoe",
      imagePath: 'lib/images/bikeSilver.png',
    ),
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();

  }

}
