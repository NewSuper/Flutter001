import 'package:flutter/material.dart';

import '../constants.dart';

class FreeTag extends StatelessWidget {
  const FreeTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: mAccentColor2,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(
        'Free',
        style: TextStyle(
          color: mAccentColor2,
          fontSize: 12,
        ),
      ),
    );
  }
}
