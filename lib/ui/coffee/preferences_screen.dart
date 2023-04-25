import 'package:flutter/material.dart';
import 'package:flutter001/ui/coffee/round_button.dart';
import 'package:flutter001/ui/coffee/total_price.dart';

import '../../constant.dart';
import 'coffee_attribute.dart';
import 'header.dart';
import 'name_and_number.dart';

class PreferencesScreen extends StatelessWidget {
  final int index;

  const PreferencesScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: <Widget>[
          Header(index: index),
          NameAndNumber(index: index),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          const CoffeeAttribute(
            title: 'Size',
            iconNames: [
              'coffee_size1',
              'coffee_size2',
              'coffee_size3',
            ],
            alignment: Alignment.bottomLeft,
            check: 1,
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          const CoffeeAttribute(
            title: 'Sugar',
            iconNames: ['coffee_sugar1', 'coffee_sugar2', 'coffee_sugar3', 'coffee_sugar4'],
            check: 2,
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          const CoffeeAttribute(
            title: 'Additions',
            iconNames: ['coffee_additions1', 'coffee_additions2'],
            check: 2,
          ),
          Divider(
            color: mPrimaryTextColor.withOpacity(0.5),
          ),
          const TotalPrice(),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
          //   child: RoundButton(
          //     title: 'Add to cart',
          //     press: (){},
          //   ),
          // )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'Preferences',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: mPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

