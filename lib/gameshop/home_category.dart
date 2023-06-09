import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {

  List<String> categorys = [
    'Controllers',
    'Headsets',
    'Keyboards',
    'Speakers',
    'VR Accessories'
  ];

  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categorys[index],
                        style: TextStyle(
                            fontSize: 12,
                            color: currentSelect == index
                                ? mSecondaryColor4
                                : mSecondTextColor4),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 22,
                        height: 3,
                        color: currentSelect == index
                            ? mSecondaryColor4
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
