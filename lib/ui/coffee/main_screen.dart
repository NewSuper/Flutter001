import 'package:flutter/material.dart';
import 'package:flutter001/ui/coffee/store_name.dart';
import 'package:flutter001/ui/coffee/view_menu.dart';

import 'address.dart';
import 'my_line.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/coffee_map.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 6, 16, 60),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(9),
                  topRight: Radius.circular(9),
                ),
              ),
              child: Column(
                children:const [
                  MyLine(),
                  StoreName(),
                  ViewMenu(),
                  Address()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
