import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

class ChooseTime extends StatelessWidget {
  final String time;
  final bool check;

  const ChooseTime({Key? key, required this.time, required this.check})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          color: check ? mYellowColor : Colors.transparent,
          border: Border.all(
              color: check ? mYellowColor : mTitleTextColor, width: 0.5),
          borderRadius: BorderRadius.circular(36)),
      child: Text(
        time,
        style: TextStyle(
            fontSize: 12, color: check ? Colors.white : mTitleTextColor),
      ),
    );
  }
}
