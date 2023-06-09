import 'package:flutter/material.dart';
import 'package:test_flutter/house/detail/about.dart';

import 'content_appbar.dart';
import 'content_intro.dart';
import 'house_info.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ContentAppBar(),
            const SizedBox(
              height: 20,
            ),
            const ContentIntro(),
            const SizedBox(
              height: 20,
            ),
            HouseInfo(),
            const SizedBox(
              height: 25,
            ),
            const About(),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const BackButton(),

              // child: FlatButton(
              //   onPressed: () {},
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   color: mPrimaryColor,
              //   child: Container(
              //     width: double.infinity,
              //     alignment: Alignment.center,
              //     padding: EdgeInsets.symmetric(vertical: 14),
              //     child: Text(
              //       'Book Now',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
