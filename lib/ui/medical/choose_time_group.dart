import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

import 'choose_model.dart';
import 'choose_time.dart';

class ChooseTimeGroup extends StatelessWidget {

  final String title;
  final List<ChooseModel>list;

  const ChooseTimeGroup({Key? key,required this.title,required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: mTitleTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Wrap(
          runSpacing: 12,
          spacing: 12,
          children:buildItem(),
        )
      ],
    );
  }

  List<Widget> buildItem(){
    List<Widget> widgets = [];
    for (ChooseModel item in list) {
      widgets.add(
          ChooseTime(time:item.time,check: item.check,)
      );
    }
    return widgets;
  }
}
