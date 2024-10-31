import 'package:first_app/models/product.dart';
import 'package:first_app/pages/drawerr.dart';
import 'package:first_app/pages/homebody.dart';
import 'package:first_app/pages/infopage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Homepage",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Homebody(),
        drawer:Draw());
  }
}
