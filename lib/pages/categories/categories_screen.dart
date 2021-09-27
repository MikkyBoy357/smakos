import 'package:flutter/material.dart';
import 'package:smakos/models/Product.dart';
import 'package:smakos/pages/categories/components/categories_drawer.dart';
import 'package:smakos/pages/details/details_screen.dart';
import 'package:smakos/pages/home/components/item_card.dart';

import '../../constants.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text('Mobile Phones'),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.sort),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
      ),
      endDrawer: CategoriesDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
