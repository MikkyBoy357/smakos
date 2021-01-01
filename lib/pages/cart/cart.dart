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
      // Container(
      //   height: SizeConfig.height(50),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     border: Border.all(
      //       color: Colors.grey[200],
      //     ),
      //   ),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           SizedBox(
      //             width: MediaQuery.of(context).size.width / 2,
      //             height: SizeConfig.height(48.6),
      //             child: FlatButton(
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(18)),
      //               color: Colors.red,
      //               onPressed: () {},
      //               child: Text(
      //                 "Buy  Now".toUpperCase(),
      //                 style: TextStyle(
      //                   fontSize: 17,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             width: MediaQuery.of(context).size.width / 2.5,
      //             height: SizeConfig.height(48.6),
      //             child: FlatButton(
      //               shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(18)),
      //               color: Colors.red,
      //               onPressed: () {},
      //               child: Text(
      //                 "Buy  Now".toUpperCase(),
      //                 style: TextStyle(
      //                   fontSize: 17,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
