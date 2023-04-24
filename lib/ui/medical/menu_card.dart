import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

class MenuCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback press;

  const MenuCard(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget>[
          Image.asset(
            imageUrl,
            width: 135,
            height: 135,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(
              color: mTitleTextColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
