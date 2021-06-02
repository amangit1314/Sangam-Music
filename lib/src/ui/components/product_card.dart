import 'package:flutter/material.dart';
import 'package:sangam/src/functionalities/models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
