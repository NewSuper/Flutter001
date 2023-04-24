import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.arrow_back_ios),
              Icon(
                Icons.menu,
                color: mSecondBackgroundColor,
                size: 36,
              )
            ],
          ),
        ));
  }
}
