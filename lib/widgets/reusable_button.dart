import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String text;
  final Color backgroundColour;

  const ReusableButton({
    required this.text,
    required this.backgroundColour,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Color(0xFF7041EE)),
        color: backgroundColour,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15.0, right: 15.0, top: 12, bottom: 10),
        child: Text(
          text,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xFF7041EE),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class MessageTextField extends StatelessWidget {
  final String label;
  final Color? labelColour;
  final Color? backgroundColour;
  final Color shadowColour;

  const MessageTextField({
    Key? key,
    required this.label,
    this.labelColour,
    this.backgroundColour,
    required this.shadowColour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 18.47)),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: labelColour,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 5.0, right: 4.0, bottom: 5.0),
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF7041EE),
                  elevation: 0,
                  child: Icon(Icons.arrow_upward),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: backgroundColour,
        borderRadius: BorderRadius.all(Radius.circular(66)),
        border: Border.all(color: Colors.grey[300] ?? Colors.grey),
        boxShadow: [
          BoxShadow(
            blurRadius: 60.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 16.0),
            color: shadowColour,
          ),
        ],
      ),
    );
  }
}
