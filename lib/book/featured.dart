import 'package:flutter/material.dart';
import 'package:test_flutter/book/my_title.dart';
import 'package:test_flutter/constants.dart';

import 'featured_item.dart';

class Featured extends StatelessWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(text: 'Features'),
        const SizedBox(
          height: 2,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredList.length,
              itemBuilder: (context, index) =>
                  FeaturedItem(item: featuredList[index])),
        )
      ],
    );
  }
}
