import 'package:flutter/material.dart';
import 'package:online_shopping/constants.dart';
import 'package:online_shopping/pages/cart/cart.dart';
import 'package:online_shopping/pages/home/components/body.dart';
import 'package:online_shopping/size_config.dart';
import 'package:online_shopping/widgets/custom_text_feld.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: Container(
        height: SizeConfig.height(50),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.list_alt_rounded),
                    Text(
                      'Categories',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.rss_feed_outlined),
                    Text(
                      'Feed',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.account_circle_outlined),
                    Text(
                      'Account',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.feedback_outlined),
                    Text(
                      'Feedback',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
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
