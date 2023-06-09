import 'package:flutter/material.dart';

import '../constants.dart';
import 'detail_color_dot.dart';

class DetailColor extends StatelessWidget {
  const DetailColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const Text('Color'),
        const SizedBox(height: 6,),
        Row(
          children: <Widget>[
            DetailColorDot(
              color: mPrimaryColor6,
              check: true,
            ),
            DetailColorDot(
              color: mSizeYellowColor6,
            ),
            DetailColorDot(
              color: mSizeGreyColor6,
            ),
          ],
        )
      ],
    );
  }
}