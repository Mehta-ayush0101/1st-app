import 'package:first_app/models/product.dart';
import 'package:first_app/models/product.dart';
import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class itemwidget extends StatelessWidget {
  final item;

  const itemwidget({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, MyRoutes.loginroute);
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
