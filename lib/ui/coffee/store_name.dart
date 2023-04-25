import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

import 'icon_text.dart';

class StoreName extends StatelessWidget {
  const StoreName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Starbucks',style: TextStyle(
            color: mTitleTextColor,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 6,),
          Row(
            children: const [
              IconText(
                iconUrl: 'assets/icons/coffee_distance.svg',
                title: '4,23 mi',
              ),
              SizedBox(width: 60,),
              IconText(
                iconUrl: 'assets/icons/coffee_time.svg',
                title: '20 min',
              )
            ],
          ),
        ],
      ),
    );
  }
}
