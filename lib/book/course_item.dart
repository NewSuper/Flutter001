import 'package:flutter/material.dart';

import '../constants.dart';

class CourseItem extends StatelessWidget {
  final Course item;

  const CourseItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(item.imageUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              color: mTitleTextColor2,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
                height: 8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: LinearProgressIndicator(
                    value: item.current / item.total,
                    backgroundColor: const Color(0xFFCFCFCF),
                    valueColor: AlwaysStoppedAnimation(mAccentColor2),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Text(
                '${item.current}/${item.total}',
                style: TextStyle(
                  fontSize: 12,
                  color: mSubTextColor2,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
