import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping/pages/home/home_screen.dart';
import 'package:online_shopping/widgets/custom_button.dart';
import 'package:online_shopping/widgets/custom_text_feld.dart';

import '../size_config.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Login'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Color(0xFFFAFBFD),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 85,
              height: SizeConfig.height(100.9),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(9.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SMAKOS',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: SizeConfig.height(280.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 35.0, right: 35.0, top: 20.0),
                              child: CustomTextField(
                                hintText: 'Email',
                                icon: Icon(
                                  Icons.mail,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 35.0, right: 35.0, top: 20.0),
                              child: CustomTextField(
                                hintText: 'Password',
                                icon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 35.0, right: 35.0, top: 20.0),
                              child: CustomTextField(
                                hintText: '+229 99 24 97 02',
                                icon: Icon(
                                  Icons.phone_android,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 35.0,
                                right: 35.0,
                                top: 30.0,
                              ),
                              child: CustomButton(
                                label: 'Login',
                                labelColour: Colors.white,
                                backgroundColour: Colors.red,
                                shadowColour:
                                    Color(0xff866DC9).withOpacity(0.16),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return HomeScreen();
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.height(55.8),
                  child: Divider(height: 10),
                ),
                Text(
                  'You are completely safe',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  'Read our Terms & Conditions.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
