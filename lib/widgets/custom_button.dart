import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color labelColour;
  final Color backgroundColour;
  final Color shadowColour;
  final Function onPressed;

  const CustomButton({
    Key key,
    @required this.label,
    this.labelColour,
    this.backgroundColour,
    this.onPressed,
    @required this.shadowColour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 58.0,
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: labelColour,
              fontSize: 20.0,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundColour,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 60.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 16.0),
              color: shadowColour,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSignInButton extends StatelessWidget {
  final String label;
  final Color labelColour;
  final Image logo;
  final Color backgroundColour;
  final Color shadowColour;

  const CustomSignInButton({
    Key key,
    @required this.label,
    this.labelColour,
    this.backgroundColour,
    @required this.shadowColour,
    this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.0,
      child: Row(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 18.0)),
          logo,
          Padding(padding: EdgeInsets.symmetric(horizontal: 18.47)),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: labelColour,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: backgroundColour,
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
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

class CustomButton2 extends StatelessWidget {
  final Color backgroundColour;
  final Color shadowColour;
  final Text text;

  const CustomButton2({
    Key key,
    this.backgroundColour,
    @required this.shadowColour,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.0,
      child: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                right: 40.0,
              ),
              child: text,
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColour,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
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

class CustomChatBubbleTo extends StatelessWidget {
  final Color shadowColour;
  final List<Widget> children;
  final double width;

  const CustomChatBubbleTo({
    Key key,
    @required this.shadowColour,
    this.children,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      width: width,
      child: Center(
        child: Row(children: children),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.0),
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        ),
        border: Border.all(color: Colors.grey[200]),
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

class CustomChatBubbleFrom extends StatelessWidget {
  final Color labelColour;
  final Color shadowColour;
  final List<Widget> children;

  const CustomChatBubbleFrom({
    Key key,
    this.labelColour,
    @required this.shadowColour,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 94.0,
      child: Center(
        child: Row(children: children),
      ),
      decoration: BoxDecoration(
        color: Color(0xFF7041EE),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        ),
        border: Border.all(color: Colors.grey[200]),
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

class ScheduleBubble extends StatelessWidget {
  final Color shadowColour;
  final List<Widget> children;
  final double height;

  const ScheduleBubble({
    Key key,
    @required this.shadowColour,
    this.children,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Center(
        child: Row(children: children),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24.0),
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        ),
        border: Border.all(color: Colors.grey[200]),
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
