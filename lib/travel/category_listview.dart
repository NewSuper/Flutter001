import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryListview extends StatefulWidget {
  const CategoryListview({Key? key}) : super(key: key);

  @override
  State<CategoryListview> createState() => _CategoryListviewState();
}

class _CategoryListviewState extends State<CategoryListview> {
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList5.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelect = index;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(left: 36),
            child: Text(
              categoryList5[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight:
                currentSelect == index ? FontWeight.bold : FontWeight.w500,
                color: currentSelect == index ? mPrimaryColor5 : Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
