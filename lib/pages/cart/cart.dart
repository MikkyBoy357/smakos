import 'package:flutter/material.dart';
import 'package:online_shopping/pages/cart/components/checkout_card.dart';
import 'package:online_shopping/size_config.dart';

import 'components/cart_card.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return CartCard();
        },
      ),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}
