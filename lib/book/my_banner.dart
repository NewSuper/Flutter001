import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.only(top: 5),
      height: 200,
      child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: bannerList.length,
      itemBuilder: (context,index)=> Container(
        width: 340,
        decoration:BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bannerList[index]),
            fit: BoxFit.cover
          )
        ),
      )),
    );
  }
}
