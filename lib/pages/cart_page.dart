import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer <Cart> (builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text("My Cart",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10),

          Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                 Shoe individualShoe = value.getUserCart()[index];
                 return CartItem(
                   shoe: individualShoe,
                 );
              }
            ),
          ),
        ],
      ),
    ));
  }
}
