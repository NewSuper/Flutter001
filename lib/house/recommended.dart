import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/constants.dart';

import 'detail/detail_screen.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      child: ListView.builder(
        itemCount: recommendedList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const DetailScreen();
                },
              ),
            );
          },
          child: Container(
            width: 230,
            height: 300,
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          recommendedList[index].imageUrl,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: Container(
                    width: 20,
                    height: 20,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: mSecondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/icons/mark.svg'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.white54,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommendedList[index].name,
                                style: TextStyle(
                                  color: mTitleTextColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                recommendedList[index].address,
                                style: TextStyle(
                                  color: mTitleTextColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: mSecondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset('assets/icons/heart.svg'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
