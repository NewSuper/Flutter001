import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

import 'car_list_item.dart';

class AvailableCarScreen extends StatelessWidget {
  const AvailableCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      appBar:buildAppBar(),
      body: ListView.builder(itemCount: carList.length,itemBuilder: (context,index) => CarListItem( index: index,),),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mPrimaryColor,
      elevation: 0,
      title: const Text('Available Car'),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ))
      ],
    );
  }
}
