import 'package:flutter/material.dart';

import '../../constants.dart';

class DetailSlider extends StatelessWidget {
  const DetailSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mCardBackgroundColor4,
              borderRadius: BorderRadius.circular(11),
              border: Border.all(
                color: mSelectCardBackgroundColor4,
                width: 1.5,
              ),
            ),
            child: Image.asset('assets/images/detail1.png'),
          ),
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: mCardBackgroundColor4,
                borderRadius: BorderRadius.circular(11)),
            child: Image.asset('assets/images/detail2.png'),
          ),
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: mCardBackgroundColor4,
                borderRadius: BorderRadius.circular(11)),
            child: Image.asset('assets/images/detail3.png'),
          ),
          Container(
            width: 68,
            height: 68,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: mCardBackgroundColor4,
                borderRadius: BorderRadius.circular(11)),
            child: Image.asset('assets/images/detail4.png'),
          ),
        ],
      ),
    );
  }
}
