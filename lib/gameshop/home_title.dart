import 'package:flutter/material.dart';

import '../constants.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 28,
      ),
      child: Text(
        'Welcome to\nPlaystation® Accessories',
        style: TextStyle(
          fontSize: 20,
          color: mPrimaryTextColor4,
        ),
      ),
    );
  }
}
