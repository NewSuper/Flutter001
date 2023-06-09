import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/constants.dart';

class MyTitle extends StatelessWidget {
  final String text;

  const MyTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: mTitleTextColor2),
          ),
          SvgPicture.asset(
            'assets/icons/more.svg',
            width: 10,
            color: mTitleTextColor2,
          )
        ],
      ),
    );
  }
}
