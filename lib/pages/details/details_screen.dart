import 'package:flutter/material.dart';
import 'package:smakos/constants.dart';
import 'package:smakos/models/Product.dart';
import 'package:smakos/pages/cart/cart.dart';
import 'package:smakos/pages/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  final Color itemBackgroundColor;

  const DetailsScreen({
    Key? key,
    required this.product,
    required this.itemBackgroundColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: itemBackgroundColor,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: itemBackgroundColor,
      elevation: 0,
      title: Text('Details'),
      actions: <Widget>[
        // IconButton(
        //   icon: Icon(
        //     Icons.search,
        //   ),
        //   onPressed: () {},
        // ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CartScreen();
                },
              ),
            );
          },
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
