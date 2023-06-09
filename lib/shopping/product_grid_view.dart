import 'package:flutter/material.dart';
import 'package:test_flutter/shopping/product_item.dart';

import '../constants.dart';


class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: productList6.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return ProductItem(
              size: size,
              product: productList6[index],
            );
          },
        ),
      ),
    );
  }
}
