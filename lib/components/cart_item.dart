import 'package:flutter/material.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

void removeItemFromCart(){
  Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
}

  @override
  Widget build(BuildContext context) {
    return Container(
     
      
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(icon: Icon(Icons.delete_outline_rounded),onPressed:removeItemFromCart ,),
      ),
    );
  }
}