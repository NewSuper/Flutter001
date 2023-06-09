import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';
import 'package:test_flutter/shopping/product_datail_screen.dart';


class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.size,
    required this.product,
  }) : super(key: key);

  final Size size;
  final Shopping product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const ProductDetailScreen();
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: (size.width - 45) / 2,
            height: (size.width - 45) / 2,
            decoration: BoxDecoration(
              color: product.background,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              product.imageUrl,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            product.title,
            style: TextStyle(
              fontSize: 14,
              color: mScroudTextColor6,
            ),
          ),
          Text(
            product.price,
            style: TextStyle(
              color: mPrimaryTextColor6,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
