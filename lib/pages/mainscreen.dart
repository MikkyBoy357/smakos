import 'package:flutter/material.dart';
import 'package:online_shopping/pages/account/account.dart';
import 'package:online_shopping/pages/categories/categories_screen.dart';
import 'package:online_shopping/pages/home/home_screen.dart';
import 'package:online_shopping/providers/bottom_bar_provider.dart';
import 'package:online_shopping/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          Provider.of<BottomBarProvider>(context, listen: false)
              .changeSelectedItem(index);
        },
        children: [
          HomeScreen(),
          CategoriesScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: Consumer<BottomBarProvider>(
        builder: (context, bottom, _) {
          return BottomBar(
            currentIndex: bottom.selectedItem,
            onTap: (index) {
              Provider.of<BottomBarProvider>(context, listen: false)
                  .changeSelectedItem(index);

              _pageController.animateToPage(bottom.selectedItem,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            },
          );
        },
      ),
    );
  }
}
