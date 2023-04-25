import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 183,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/header.png'),
            fit: BoxFit.cover),
      ),
      child: UnconstrainedBox(
        child: SvgPicture.asset(
          'assets/icons/${coffeeNames[index]}.svg',
          height: 100,
        ),
      ),
    );
  }
}