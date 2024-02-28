import 'package:flutter/material.dart';
import 'package:soko_beauty/models/shop/Product.dart';
import 'package:soko_beauty/pages/shop/product/product_page.dart';
import 'package:soko_beauty/widgets/products/common/product_appbar.dart';
import 'package:soko_beauty/widgets/products/product_add_to_cart.dart';

class ViewCartPage extends StatelessWidget {
  final String shopName;
  final String shopDescription;
  final List<Product> products;

  ViewCartPage({
    required this.shopName,
    required this.shopDescription,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        
          ProductAddToCartScreen(product: products[0]),
         ],
        
      ),
    );
  }
}
