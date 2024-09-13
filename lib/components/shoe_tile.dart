import 'package:flutter/material.dart';
import '../models/shoe.dart';



class ShoeTile extends StatelessWidget {
  Shoe shoe;
   ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          Image.asset(shoe.imagepath),
          //description
          Text(shoe.description, style: TextStyle(color: Colors.grey),),
          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  //shoe name
                  Text(shoe.name,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  //price
                  Text("Rs  "+shoe.price,
                  style: TextStyle(
                    color: Colors.grey,

                  ),
                  ),
                ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                    ),
                  ),
                    child: Icon(Icons.add,
                    color: Colors.white,
                    size: 30,
                    ),
                ),
              ],
            ),
          )
          //add in cart button
        ],
      ),
    );
  }
}
