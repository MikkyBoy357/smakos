import 'package:flutter/material.dart';

import '../size_config.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  const BottomBar({
    Key? key,
    required this.currentIndex,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.red,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Categories',
          icon: Icon(Icons.list_alt_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }
}
