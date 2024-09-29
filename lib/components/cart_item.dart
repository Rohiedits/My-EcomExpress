import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/phone.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
  Phone phone;
  CartItem({super.key, required this.phone});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.phone);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.phone.imagePath),
        title: Text(widget.phone.name),
        subtitle: Text(widget.phone.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
