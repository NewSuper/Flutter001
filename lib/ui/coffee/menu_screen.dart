import 'package:flutter/material.dart';
import 'package:flutter001/ui/coffee/menu_item.dart';

import '../../constant.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'Menu',
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
      bottom: PreferredSize(
        child: Divider(
          height: 1,
          color: mPrimaryTextColor.withOpacity(0.5),
        ),
        preferredSize: const Size.fromHeight(1),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView.builder(itemBuilder: (context,index)=>
      MenuItem(index: index),itemCount:  coffeeNames.length,),
    );
  }
}
