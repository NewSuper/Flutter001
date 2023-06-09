import 'package:flutter/material.dart';
import 'package:test_flutter/book/my_title.dart';

import '../constants.dart';
import 'course_item.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MyTitle(text: 'Course'),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: courseList.length,
          itemBuilder: (context, index) => CourseItem(
            item: courseList[index],
          ),
        )
      ],
    );
  }
}
