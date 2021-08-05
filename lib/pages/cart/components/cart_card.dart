import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping/models/Product.dart';
import 'package:online_shopping/size_config.dart';

class CartCard extends StatefulWidget {
  final Product product;
  final Function press;
  const CartCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int num = 1;
  IconData heart = CupertinoIcons.heart;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('0'),
      child: GestureDetector(
        onTap: widget.press,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey[300]),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 10, right: 20),
                                child: Container(
                                  height: 90,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/bag_1.png'),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Office Code',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$210.99',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                      ),
                                      Text(
                                        '\$290.99',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            indent: 15,
                            endIndent: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          heart,
                                          color: Colors.red,
                                        ),
                                        onPressed: () {
                                          if (heart == CupertinoIcons.heart) {
                                            heart = CupertinoIcons.heart_fill;
                                          } else {
                                            heart = CupertinoIcons.heart;
                                          }
                                          setState(() {});
                                        },
                                      ),
                                      VerticalDivider(
                                        color: Colors.red,
                                        thickness: 1,
                                        indent: 10,
                                        endIndent: 10,
                                      ),
                                      FlatButton(
                                        // height: 10,
                                        onPressed: () {
                                          // Delete item
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.delete,
                                              color: Colors.redAccent,
                                              size: 25,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.0),
                                            ),
                                            Text(
                                              'DELETE',
                                              style: TextStyle(
                                                fontSize:
                                                    SizeConfig.textSize(17),
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          CupertinoIcons.minus_circle_fill,
                                          color: Colors.red,
                                          size: SizeConfig.textSize(25),
                                        ),
                                        onPressed: () {
                                          if (num > 1) {
                                            num = num - 1;
                                          } else {
                                            num = 1;
                                          }
                                          setState(() {});
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 2.0,
                                        ),
                                        child: Text(
                                          '$num',
                                          style: TextStyle(
                                            fontSize: 23,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add_circle,
                                          color: Colors.red,
                                          size: SizeConfig.textSize(25),
                                        ),
                                        onPressed: () {
                                          num++;
                                          setState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            '27% OFF',
                            style: TextStyle(
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
            ],
          ),
        ),
      ),
    );
  }
}
