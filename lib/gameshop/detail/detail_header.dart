import 'package:flutter/material.dart';

import '../../constants.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            color: mSelectCardBackgroundColor4,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/product_detail_big.png',
                width: 330,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

