import 'package:flutter/material.dart';

class Infopage extends StatelessWidget {
  final product;
  const Infopage({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
              tag: product['id']!,
              child: Image.network(
                product['image'],
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
