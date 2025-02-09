import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/shoe.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text('Successfully added'),
      content: Text("Check your cart")
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child)=>Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(color:Colors.grey[100], borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(Icons.search, color: Colors.grey,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text('everyone files.. some fly longer than others', style: TextStyle(color: Colors.grey[600])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Hot Picks 🔥'),
                  Text('See all',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  )
                ]
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  Shoe shoe = value.getShoeList()[index];

                  return ShoeTile(
                    shoe: shoe, onTap: ()=>addShoeToCart(shoe),
                  );
                },)
          ),
          Padding(
            padding: const EdgeInsets.only(top:25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white,
            ),
          )

        ]
    ),);
  }
}
