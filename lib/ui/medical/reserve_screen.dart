import 'package:flutter/material.dart';
import 'package:flutter001/ui/medical/choose_date.dart';
import 'package:flutter001/ui/medical/choose_model.dart';
import 'package:flutter001/ui/medical/choose_time_group.dart';
import 'package:flutter001/ui/medical/my_header.dart';
import 'package:flutter001/ui/medical/user_info.dart';

import 'package:flutter001/constant.dart';
import 'my_appbar.dart';

class ReserveScreen extends StatelessWidget {
  const ReserveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: <Widget>[
        MyHeader(
          height: 258,
          imageUrl: 'assets/images/avatar_head.png',
          child: Column(
            children: const <Widget>[
              MyAppBar(),
              SizedBox(
                height: 16,
              ),
              UserInfo(),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [mBackgroundColor, mSecondBackgroundColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const ChooseSlot(),
                const SizedBox(
                  height: 32,
                ),
                ChooseTimeGroup(
                  title: 'Morning',
                  list: [
                    ChooseModel('09.00 AM'),
                    ChooseModel('09.30 AM', check: true),
                    ChooseModel('10.30 AM'),
                    ChooseModel('11.00 AM'),
                    ChooseModel('11.30 AM'),
                    ChooseModel('12.00 AM'),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                ChooseTimeGroup(
                  title: 'Afternoon',
                  list: [
                    ChooseModel('02.00 PM'),
                    ChooseModel('02.30 PM'),
                    ChooseModel('03.00 PM'),
                    ChooseModel('03.30 PM'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}

class ChooseSlot extends StatelessWidget {
  const ChooseSlot({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Choose Your Slot',
          style: TextStyle(
            color: mTitleTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            ChooseDate(
              week: 'Mon',
              date: '26',
              check: false,
            ),
            ChooseDate(
              week: 'Tue',
              date: '27',
              check: true,
            ),
            ChooseDate(
              week: 'Wed',
              date: '28',
              check: false,
            ),
            ChooseDate(
              week: 'Thu',
              date: '29',
              check: false,
            ),
            ChooseDate(
              week: 'Fri',
              date: '30',
              check: true,
            ),
            ChooseDate(
              week: 'Sat',
              date: '31',
              check: true,
            ),
          ],
        )
      ],
    );
  }
}
