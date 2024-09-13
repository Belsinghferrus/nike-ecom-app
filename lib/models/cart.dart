

import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: "Court Vision",
        price: "4995",
        imagepath: "lib/images/nike1.png",
        description: "Step up your game with the Men's Court Vision Low Next Nature Shoes by Nike."
    ),
    Shoe(
        name: "Revolution 7",
        price: "3695",
        imagepath: "lib/images/nike2.png",
        description: "Up your running game with the Nike Men's Revolution 7 Running shoes."
    ),
    Shoe(
        name: "Downshifter",
        price: "4295",
        imagepath: "lib/images/nike3.png",
        description: "Are you just starting out in the world of running or do you want to take your skills to the next level? The Downshifter 13 is exactly what you need."
    ),
    Shoe(
        name: "Air Mac ",
        price: "4316",
        imagepath: "lib/images/nike4.png",
        description: "What you do is up to you. Just do it."
    ),
  ];

  // list of items in cart
    List<Shoe> userCart =[];

  //get list of shoe
    List <Shoe> getShoeList (){
      return shoeShop;
    }

  //get cart
    List<Shoe> getUserCart(){
          return userCart;
    }

  //add item to cart
    void addItemToCart(Shoe shoe) {
      userCart.add(shoe);
      notifyListeners();
    }

  //remove item from cart
    void removeItemFromCart (Shoe shoe){
          userCart.remove(shoe);
          notifyListeners();
    }
}