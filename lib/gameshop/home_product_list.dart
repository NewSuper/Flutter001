
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../widget/rating_bar.dart';
import 'detail/game_detail.dart';

class HomeProductList extends StatefulWidget {
  const HomeProductList({Key? key}) : super(key: key);

  @override
  State<HomeProductList> createState() => _HomeProductListState();
}

class _HomeProductListState extends State<HomeProductList> {
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: productList.length,
        itemBuilder: (context, index) => buildItem(index),
      ),
    );
  }

  Widget buildItem(int index) {
    double scale = 1;
    Color bgColor = mCardBackgroundColor4;
    Color textColor = mPrimaryTextColor4;

    if (currentSelect == index) {
      scale = 1.3;
      bgColor = mSelectCardBackgroundColor4;
      textColor = Colors.white;
    }

    return GestureDetector(
      onTap: () {
        if (currentSelect == index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return GameDetail();
              },
            ),
          );
        } else {
          setState(() {
            currentSelect = index;
          });
        }
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 260 * scale,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 222 * scale,
                  decoration: BoxDecoration(
                      color: bgColor, borderRadius: BorderRadius.circular(21)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 28,
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              productList[index].name,
                              style: TextStyle(
                                  fontSize: 12 * scale,
                                  color: textColor,
                                  height: 1.5),
                            ),
                            SizedBox(
                              height: 8 * scale,
                            ),
                            RatingBar(
                              onRatingUpdate: (value) {},
                              selectColor: mSecondaryColor,
                              value: productList[index].rating,
                              maxRating: 5,
                              size: 14 * scale,
                            ),
                            SizedBox(
                              height: 8 * scale,
                            ),
                            Text(
                              '\$${productList[index].price}',
                              style: TextStyle(
                                fontSize: 14 * scale,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: mSecondaryColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(21),
                                bottomRight: Radius.circular(21),
                              )),
                          child: SvgPicture.asset(
                            'assets/icons/icon_add_cart.svg',
                            width: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      productList[index].imageUrl,
                      height: 56 * scale,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
