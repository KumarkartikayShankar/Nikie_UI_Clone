import 'package:flutter/material.dart';
import 'package:nike_app/components/shoe_tile.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemtoCart(shoe);
    showDialog(context: context, builder: (context)=> AlertDialog(title: Text('Added To Cart'),
    content: Text('Check Cart Now'),));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //search bar

        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              )
            ],
          ),
        ),

        //message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey),
          ),
        ),

        // hot picks

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Hot Picks 🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all',
                style: TextStyle(
                    color: Colors.blue[300], fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        const SizedBox(
          height: 8,
        ),

        Expanded(
            child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Shoe shoe = value.getShoelist()[index];
            return ShoeTile(
              shoe: shoe,
              onTap: () => addShoeToCart(shoe),
            );
          },
        ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Divider(color: Colors.grey[350],),
        )
      ],
    ),);
  }
}
