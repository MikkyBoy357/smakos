import 'package:flutter/material.dart';
import 'package:online_shopping/pages/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupPage(),
    );
  }
}
