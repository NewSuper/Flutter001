import 'package:flutter/material.dart';

import '../constants.dart';
import 'latested_item.dart';
import 'my_title.dart';

class Latested extends StatelessWidget {
  const Latested({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(
          text: 'Latested',
        ),
        const SizedBox(height: 5,),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: latestedList.length,
          itemBuilder: (context, index) => LatestedItem(
            item: latestedList[index],
          ),
        )
      ],
    );
  }
}
