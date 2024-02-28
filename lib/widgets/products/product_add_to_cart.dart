import 'package:flutter/material.dart';
import 'package:soko_beauty/models/shop/Product.dart';

import 'package:another_carousel_pro/another_carousel_pro.dart';

class ProductAddToCartScreen extends StatefulWidget {
  final Product product;

  ProductAddToCartScreen({
    required this.product,
  });

  @override
  _ProductAddToCartScreenState createState() => _ProductAddToCartScreenState();
}

class _ProductAddToCartScreenState extends State<ProductAddToCartScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: AnotherCarousel(
              images: [ 
                NetworkImage(widget.product.imageUrl),
                NetworkImage(widget.product.imageUrl),
                NetworkImage(widget.product.imageUrl),
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.white,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              borderRadius: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.product.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.product.description,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ksh ${widget.product.price}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Add to cart
              },
              child: Text("Add to Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
