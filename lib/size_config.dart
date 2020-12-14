//A custom class for handling text size, margin szie and other responsiveness related issues
import 'package:flutter/material.dart';

class SizeConfig {
  // static keyword included so you can call this method without instantiating an object of it like so :
  // SizeConfig.height(context, 2)

  static BuildContext appContext;
  static MediaQueryData _mediaQueryData;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    appContext = context;
  }

  static double height(double height) {
    double screenHeight = _mediaQueryData.size.height / 600;
    return height * screenHeight;
  }

  static double width(double width) {
    double screenWidth = _mediaQueryData.size.width / 400;
    return width * screenWidth;
  }

  static double textSize(double textSize) {
    double screenWidth = _mediaQueryData.size.width / 400;
    return textSize * screenWidth;
  }
}