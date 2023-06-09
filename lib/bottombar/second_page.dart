import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../house/best_offer.dart';
import '../house/categories.dart';
import '../house/custom_appbar.dart';
import '../house/recommended.dart';
import '../house/search_input.dart';
import '../house/welcome_text.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mBackgroundColor,
      appBar: const CustomAppbar(),
      //bottomNavigationBar: CustomBottombar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            WelcomeText(),
            SearchInput(),
            Categories(),
            SizedBox(
              height: 20,
            ),
            Recommended(),
            BestOffer(),
          ],
        ),
      ),
    );
  }
}

class CustomBottombar extends StatelessWidget {
  const CustomBottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(36),
          boxShadow: [boxShadow]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset('assets/icons/home.svg'),
          SvgPicture.asset('assets/icons/home_search.svg'),
          SvgPicture.asset('assets/icons/notification.svg'),
          SvgPicture.asset('assets/icons/chat.svg'),
          SvgPicture.asset('assets/icons/home_mark.svg'),
        ],
      ),
    );
  }
}
