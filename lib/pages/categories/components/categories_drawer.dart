import 'dart:math';

import 'package:flutter/material.dart';

List categories = [
  'Automobile',
  'Baby Products',
  'Computing',
  'Electronics',
  'Fashion',
  'Gaming',
  'Health Fashion',
  'Home & Beauty',
  'Phones & Tablets',
  'Sports',
  'Supermarket',
  'Toys',
];

List categoryColors = [
  // Color(0xFFA6D6FF),
  // Color(0xFFFF98A8),
  Color(0xFFF6BB86),
  Color(0xFF00C48C),
  Color(0xFF22B6F2),
  Color(0xFFFFB425),
  Color(0xFF949AEE),
  Color(0xFF4CA772),
  Color(0xFF565656),
];

class CategoriesDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            'Choose Category',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Card(
                child: Container(
                  height: 58,
                  decoration: BoxDecoration(
                    color: index < categoryColors.length
                        ? categoryColors[index]
                        : categoryColors[
                            Random().nextInt(categoryColors.length)],
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Center(
                    child: Text(
                      '${categories[index]}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
