import 'package:first_app/models/product.dart';
import 'package:first_app/widgets/item.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Center(child: Text("flutter")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: models.items.length,
          itemBuilder: (BuildContext context, int index) {
            return itemwidget(
              item: models.items[index],
            );
          },
        ),
      ),
      drawer: Drawer(),
    );
  }
}
