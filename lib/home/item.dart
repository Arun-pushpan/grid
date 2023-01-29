import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../model.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;
   ItemCard({

    required this.press,
     required this.product,
  }) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Hero(
                    tag: "${product.id}",
                    child: Image.asset(product.image),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 5),
                    child: Text(
                      // products is out demo list
                      product.title,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  )
                ],
              ),
            ),
         ),

        ],
      ),
    );
  }
}
