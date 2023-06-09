import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class DetailBuy extends StatelessWidget {
  const DetailBuy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: mPrimaryColor, width: 0.5),
            borderRadius: BorderRadius.circular(13),
          ),
          child: SvgPicture.asset(
            'assets/images/add_cart.svg',
            color: mPrimaryColor,
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: FlatButton(
              padding: const EdgeInsets.all(14),
              color: mPrimaryColor6,
              onPressed: () {},
              child: const Text(
                'BUY NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
