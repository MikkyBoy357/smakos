import 'package:flutter/material.dart';
import 'package:online_shopping/size_config.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Icon icon;

  const CustomTextField({
    Key key,
    this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 58,
        // width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: Colors.grey[200]),
          boxShadow: [
            BoxShadow(
              blurRadius: 60.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 16.0),
              color: Color(0xff4E4F72).withOpacity(0.08),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 4.0),
          child: Center(
            child: TextField(
              textAlign: TextAlign.left,
              decoration: new InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
                hintText: hintText,
                border: InputBorder.none,
                icon: icon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final String hintText;
  final Icon icon;

  const SearchBar({
    Key key,
    this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.height(34.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: Colors.grey[200]),
        boxShadow: [
          BoxShadow(
            blurRadius: 60.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 16.0),
            color: Color(0xff4E4F72).withOpacity(0.08),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: TextField(
          textAlign: TextAlign.left,
          decoration: new InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 20.0,
            ),
            hintText: hintText,
            border: InputBorder.none,
            icon: icon,
          ),
        ),
      ),
    );
  }
}
