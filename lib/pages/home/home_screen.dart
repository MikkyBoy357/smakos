import 'package:flutter/material.dart';
import 'package:smakos/constants.dart';
import 'package:smakos/pages/cart/cart.dart';
import 'package:smakos/pages/home/components/body.dart';
import 'package:smakos/size_config.dart';
import 'package:smakos/widgets/custom_text_feld.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: SearchBar(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        hintText: 'Search on SMAKOS',
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.shopping_cart_outlined,
            size: 35,
          ),
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
