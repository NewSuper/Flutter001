import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/constants.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: 42,
      margin: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(
          color: mCardBackgroundColor4,
          borderRadius: BorderRadius.circular(36)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                width: 20,
                height: 2,
                color: mSecondaryColor4,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/icons/icon_home.svg',
                color: mSecondaryColor4,
                width: 20,
              ),
              const Spacer()
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 20,
                height: 2,
                color: Colors.transparent,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/icons/icon_heart.svg',
                width: 20,
              ),
              const Spacer(),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 20,
                height: 2,
                color: Colors.transparent,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/icons/icon_cart.svg',
                width: 20,
              ),
              const Spacer(),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: 20,
                height: 2,
                color: Colors.transparent,
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/icons/icon_user.svg',
                width: 20,
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    ));
  }
}
