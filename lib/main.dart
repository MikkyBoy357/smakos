import 'package:flutter/material.dart';
import 'package:online_shopping/pages/signup.dart';
import 'package:online_shopping/providers/bottom_bar_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupPage(),
      ),
    );
  }
}
