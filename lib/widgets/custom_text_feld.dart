import 'package:flutter/material.dart';

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
    return Container(
      height: MediaQuery.of(context).size.height - 740,
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
