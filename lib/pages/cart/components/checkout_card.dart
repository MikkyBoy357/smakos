import 'package:flutter/material.dart';
import 'package:smakos/size_config.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.height(2),
        horizontal: SizeConfig.width(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        border: Border.all(
          color: Colors.grey[200] ?? Colors.grey,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: SizeConfig.height(30),
                width: SizeConfig.width(40),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.list_alt_rounded),
              ),
              Spacer(),
              Text("Add voucher code"),
              const SizedBox(width: 10),
              Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(height: SizeConfig.height(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: "Total:\n",
                  children: [
                    TextSpan(
                      text: "\$1337.15",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                width: SizeConfig.width(150),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
