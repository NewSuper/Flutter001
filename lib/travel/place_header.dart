import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class PlaceHeader extends StatelessWidget {
  const PlaceHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/header.png',
            height: 400,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 30,
            top: 60,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: mBackgroundColor5,
                    borderRadius: BorderRadius.circular(8)),
                child: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: mSecondaryColor5,
                  borderRadius: BorderRadius.circular(36)),
              child: SvgPicture.asset('assets/icons/favorite.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
