import 'package:flutter/material.dart';

import '../../constants.dart';

class DetailAddCart extends StatelessWidget {
  const DetailAddCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '\$50',
            style: TextStyle(
              color: mPrimaryTextColor4,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
            decoration: BoxDecoration(
              color: mSecondaryColor4,
              borderRadius: BorderRadius.circular(36),
            ),
            child: const Text(
              'Add to Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
