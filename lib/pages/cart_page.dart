import 'package:flutter/material.dart';
import 'package:nike_app/components/cart_item.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context ,value, child)=> Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Text("My Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),

          const SizedBox(height: 16,),
          Expanded(child: ListView.builder(itemCount: value.getUserCart().length,itemBuilder: (context,index){
            Shoe individualShoe = value.getUserCart()[index];

            return CartItem(shoe:individualShoe);
          }
          )
          )
        ],
      ),
    ));
  }
}