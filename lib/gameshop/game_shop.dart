import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'home_category.dart';
import 'home_product_list.dart';
import 'home_title.dart';
import 'my_bottom_bar.dart';

class GameShop extends StatelessWidget {
  const GameShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: const MyBottomBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeTitle(),
            HomeCategory(),
            HomeProductList(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor4,
      elevation: 0,
      brightness: Brightness.light,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/icon_menu.svg'),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/icon_search.svg'),
          onPressed: () {},
        )
      ],
    );
  }
}
