import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/constants.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: const [
              MenuIntro(
                content: '5 Bedroom\n3 Master Bedroom',
                imageUrl: 'assets/icons/bedroom.svg',
              ),
              MenuIntro(
                content: '5 Bathroom \n3 Toilet',
                imageUrl: 'assets/icons/bathroom.svg',
              )
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: const [
              MenuIntro(
                content: '2 Kitchen \n120 sqft',
                imageUrl: 'assets/icons/kitchen.svg',
              ),
              MenuIntro(
                content: '2 Parking \n180 sqft',
                imageUrl: 'assets/icons/parking.svg',
              )
            ],
          )
        ],
      ),
    );
  }
}

class MenuIntro extends StatelessWidget {
  final String imageUrl;
  final String content;

  const MenuIntro({
    Key? key,
    required this.imageUrl,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
      children: [
        SvgPicture.asset(imageUrl),
        const SizedBox(
          width: 15,
        ),
        Text(
          content,
          style: TextStyle(color: mBodyTextColor, fontSize: 12),
        )
      ],
    ));
  }
}
