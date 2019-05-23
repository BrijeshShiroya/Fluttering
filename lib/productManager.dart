import 'package:flutter/material.dart';

import './product.dart';
import './buttonControl.dart';

class ProductManager extends StatefulWidget {
  final String initialProduct;

  ProductManager(this.initialProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  onAddProductPress() {
    setState(() {
      _products.add('Advance Food Tester');
    });
  }

  @override
  void initState() {
    _products.add(widget.initialProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ButtonControl(onAddProductPress),
          Column(
            children: _products
                .map(
                  (element) => Product(element),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
