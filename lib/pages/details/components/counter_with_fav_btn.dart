import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        CircleAvatar(
          backgroundColor: Color(0xFFFF6464),
          child: Center(
            child: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
