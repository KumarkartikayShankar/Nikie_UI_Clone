import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike_app/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(shoe.imagepath)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(shoe.name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  const SizedBox(height: 5,),
                  Text('\₹' +shoe.price,style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ],
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12) )),
                    child: const Icon(
                      Icons.add_shopping_cart_rounded,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        )
      ]),
    );
  }
}
