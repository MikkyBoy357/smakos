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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                // height: SizeConfig.height(53.9),
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
              Container(
                height: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextField(
                          hintText: 'First Name',
                          icon: Icon(
                            CupertinoIcons.profile_circled,
                            color: Colors.red,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Last Name',
                          icon: Icon(
                            CupertinoIcons.profile_circled,
                            color: Colors.red,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Email',
                          icon: Icon(
                            Icons.mail,
                            color: Colors.red,
                          ),
                        ),
                        CustomTextField(
                          hintText: 'Password',
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.red,
                          ),
                        ),
                        CustomTextField(
                          hintText: '+229 99 24 97 02',
                          icon: Icon(
                            Icons.phone_android,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30.0,
                          ),
                          child: CustomButton(
                            label: 'Register Now',
                            labelColour: Colors.white,
                            backgroundColour: Colors.red,
                            shadowColour: Color(0xff866DC9).withOpacity(0.16),
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
                  Container(
                    height: 5.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
