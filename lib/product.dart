import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String title;
  Product(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[Image.asset('assets/food.jpg'), Text(title)],
      ),
    );
  }
}
