import 'package:flutter/material.dart';

class models {
  static final items = [
    item(
        id: 1,
        name: "iPhone 15 Pro",
        desc: "iPhone 15 Pro has a great camera",
        color: "#33505a",
        price: "999",
        image: "https://m.media-amazon.com/images/I/81Os1SDWpcL._SX679_.jpg")
  ];
}

class item {
  final int id;
  final String name;
  final String desc;
  final String color;
  final String price;
  final String image;

  item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.price,
      required this.image});
}
