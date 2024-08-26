import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "1906R",
        price: "154.99",
        description: "N-ergy outsole provides superior shock absorption",
        imagePath: "lib/images/m1906ra_nb_02_i.jpeg"),
    Shoe(
        name: "FuelCell Rebel v4",
        price: "139.99",
        description:
            "FuelCell foam delivers a propulsive feel to help drive you forward",
        imagePath: "lib/images/mfcxlj4_nb_02_i.jpeg"),
    Shoe(
        name: "CAYL x New Balance 1906R",
        price: "169.99",
        description: "N-ergy outsole provides superior shock absorption",
        imagePath: "lib/images/m1906rcy_nb_02_i.jpeg"),
    Shoe(
        name: "FuelCell Propel v5",
        price: "119.99",
        description:
            "Designed with comfort and energy return top-of-mind, this versatile running shoe is crafted for runners of all styles.",
        imagePath: "lib/images/mfcprln5_nb_02_i.jpeg"),
  ];

  // list of items in the cart
  List<Shoe> userCart = [];

  // get list of itmes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
