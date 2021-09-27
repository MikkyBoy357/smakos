import 'package:flutter/material.dart';

class Special {
  final String image, title, description;
  final int price, size, id;
  final Color? color;
  Special({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    this.color,
  });
}

List<Special> specials = [
  Special(
    id: 1,
    title: "Christmas Sale",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/christmas.png",
    color: Colors.red[800],
  ),
  Special(
    id: 2,
    title: "Free Delivery",
    price: 234,
    size: 8,
    description: dummyText,
    image: "assets/images/crown.png",
    color: Colors.orange,
  ),
  Special(
    id: 3,
    title: "Official Stores",
    price: 234,
    size: 10,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: Colors.red[900],
  ),
  Special(
    id: 4,
    title: "Smakos Global",
    price: 234,
    size: 11,
    description: dummyText,
    image: "assets/images/airplane.png",
    color: Colors.blue[900],
  ),
  Special(
    id: 5,
    title: "Smakos Food",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
  ),
  Special(
    id: 6,
    title: "Shake & Win",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Colors.green,
  ),
  Special(
    id: 7,
    title: "Games & Videos",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/gamepad.png",
    // color: Color(0xFFAEAEAE),
  ),
  Special(
    id: 8,
    title: "Call to Order",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/telephone.png",
    color: Colors.orange,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
