import 'package:flutter/material.dart';

import '../constants.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
            style: TextStyle(
              color: mPrimaryTextColor3,
            ),
            children: [
              const TextSpan(text: 'Already have an account?'),
              TextSpan(
                text: ' Log in',
                style: TextStyle(
                    color: mPrimaryColor3
                ),
              ),
            ]),
      ),
    );
  }
}
