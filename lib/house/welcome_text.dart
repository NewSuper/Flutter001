import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello NewSuper',
            style: TextStyle(
                color: mTitleTextColor.withOpacity(0.8), fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Find your sweet Home',
            style: TextStyle(
              color: mTitleTextColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
