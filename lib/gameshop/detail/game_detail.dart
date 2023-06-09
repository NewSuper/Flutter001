import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'detail_add_cart.dart';
import 'detail_header.dart';
import 'detail_intro.dart';
import 'detail_slider.dart';

class GameDetail extends StatelessWidget {
  const GameDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DetailHeader(),
            DetailSlider(),
            DetailIntro(),
            DetailAddCart()
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mSelectCardBackgroundColor4,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/icon_favorites.svg'),
          onPressed: () {},
        )
      ],
    );
  }
}
