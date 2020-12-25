import 'package:flutter/material.dart';
import 'package:online_shopping/models/specials.dart';
import 'package:online_shopping/size_config.dart';

import '../../../constants.dart';

class SpecialCard extends StatelessWidget {
  final Special special;
  final Function press;
  const SpecialCard({
    Key key,
    this.special,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: special.color,
            radius: 28,
            child: Image.asset(
              '${special.image}',
              height: 45,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  '${special.title}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: SizeConfig.textSize(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
