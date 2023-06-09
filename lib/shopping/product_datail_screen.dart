import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'detail_buy.dart';
import 'detail_color.dart';
import 'detail_info.dart';
import 'detail_number.dart';
import 'detail_size.dart';
import 'detail_title.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor6,
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const  DetailTitle(),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 240),
                  padding: const EdgeInsets.fromLTRB(24, 90, 24, 24),
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: const [
                          DetailColor(),
                          SizedBox(
                            width: 100,
                          ),
                          DetailSize()
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
                            'Lorem Ipsum has been the industry\'s standard dummy text ever since. '
                            'When an unknown printer took a galley.',
                        style: TextStyle(
                            color: mPrimaryTextColor6,
                            fontSize: 13,
                            height: 1.5),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          DetailNumber(),
                          Container(
                            width: 32,
                            height: 32,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: mRedColor6,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: SvgPicture.asset(
                              'assets/images/heart.svg',
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      DetailBuy()
                    ],
                  ),
                ),
                DetailInfo()
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      brightness: Brightness.dark,
      backgroundColor: mPrimaryColor6,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/back.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/search.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/images/cart.svg',
            width: 24,
            height: 24,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
