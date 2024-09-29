import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/phone.dart';

class Cart extends ChangeNotifier {
  // list of phone for sale
  List<Phone> phoneShop = [
    Phone(
      name: 'i-phone-15pro',
      price: '11.0',
      description: 'Latest version color of White',
      imagePath: 'lib/phonejpgs/phone2.jpg',
    ),
    Phone(
      name: 'i-phone-14pro',
      price: '11.0',
      description: 'Latest version color of white2',
      imagePath: 'lib/phonejpgs/phone3.jpg',
    ),
    Phone(
      name: 'i-phone-13pro',
      price: '11.0',
      description: 'Latest version color of White3',
      imagePath: 'lib/phonejpgs/phone4.jpg',
    ),
    Phone(
      name: 'i-phone-12pro',
      price: '11.0',
      description: 'Latest version color of something',
      imagePath: 'lib/phonejpgs/phone1.jpg',
    ),
  ];

  //list of items in users cart
  List<Phone> userCart = [];

  //get list of phones for scales
  List<Phone> getPhoneList() {
    return phoneShop;
  }

  //get cart
  List<Phone> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Phone phone) {
    userCart.add(phone);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Phone phone) {
    userCart.remove(phone);
    notifyListeners();
  }
}
