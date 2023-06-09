import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class PlaceAttributeItem extends StatelessWidget {
  final String iconUrl;
  final bool isSelect = false;

  const PlaceAttributeItem(
      {Key? key,  required this.iconUrl,
         isSelect = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isSelect ? mPrimaryColor5 : Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          isSelect
              ? const BoxShadow()
              : BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SvgPicture.asset(
        iconUrl,
        color: isSelect ? Colors.white : mPrimaryColor5,
      ),
    );
  }
}
