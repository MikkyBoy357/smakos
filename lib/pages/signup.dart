import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping/pages/login.dart';
import 'package:online_shopping/size_config.dart';
import 'package:online_shopping/widgets/custom_button.dart';
import 'package:online_shopping/widgets/custom_text_feld.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Create Account'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Color(0xFFFAFBFD),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: SizeConfig.height(53.9),
            color: Color(0xFFFAFBFD),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SMAKOS',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                    size: 50,
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  height: SizeConfig.height(377.3),
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
                                hintText: 'First Name',
                                icon: Icon(
                                  CupertinoIcons.profile_circled,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 35.0, right: 35.0, top: 20.0),
                              child: CustomTextField(
                                hintText: 'Last Name',
                                icon: Icon(
                                  CupertinoIcons.profile_circled,
                                  color: Colors.red,
                                ),
                              ),
                            ),
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
                                label: 'Register Now',
                                labelColour: Colors.white,
                                backgroundColour: Colors.red,
                                shadowColour:
                                    Color(0xff866DC9).withOpacity(0.16),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Login();
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
          Column(
            children: [
              SizedBox(
                height: SizeConfig.height(40.8),
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
        ],
      ),
    );
  }
}
