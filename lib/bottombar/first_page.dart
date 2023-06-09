import 'package:flutter/material.dart';
import 'package:test_flutter/signup/sign_up.dart';

import '../book/course_page.dart';
import '../book/featured.dart';
import '../book/latested.dart';
import '../book/my_banner.dart';
import '../constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            MyBanner(),
            Featured(),
            Latested(),
            CoursePage(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Home',
        style: TextStyle(
          color: mTitleTextColor2,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Image.asset('assets/images/avatar.png'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUp();
                },
              ),
            );
          },
        )
      ],
    );
  }
}