import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_flutter/shopping/page_list_title.dart';
import 'package:test_flutter/shopping/page_title_name.dart';
import 'package:test_flutter/shopping/product_grid_view.dart';

import '../constants.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const PageTitleName(),
          const SizedBox(
            height: 20,
          ),
          const PageListTitle(),
          const SizedBox(
            height: 20,
          ),
          ProductGridView(size: size)
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(
          'assets/images/back.svg',
          width: 24,
          height: 24,
          color: mPrimaryTextColor6,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/search.svg',
            width: 24,
            height: 24,
            color: mPrimaryTextColor6,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/cart.svg',
            width: 24,
            height: 24,
            color: mPrimaryTextColor6,
          ),
        ),
      ],
    );
  }
}
