import 'package:flutter/foundation.dart';

class BottomBarProvider with ChangeNotifier {
  int selectedItem = 0;

  void changeSelectedItem(int newValue) {
    selectedItem = newValue;
    notifyListeners();
  }
}
