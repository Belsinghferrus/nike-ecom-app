import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Search", style: TextStyle(color: Colors.grey),),
              Icon(Icons.search, color: Colors.grey,),
            ],
          ),
        ),

        //message
        const Padding(padding: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "All you have to do is pick up your feet",
            style: TextStyle(
                color: Colors.grey
            ),
          ),
        ),

        //hot picks
        Padding(padding: EdgeInsets.symmetric(horizontal: 25, ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Hot Picks🔥",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text("See all",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 15,),
        //shoe tile
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (centext,index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                );
              }
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    ),
    );
  }
}
