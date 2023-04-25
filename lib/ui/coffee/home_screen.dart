import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';
import 'package:flutter001/ui/coffee/slider_dot.dart';

import 'login_and_register.dart';
import 'login_with_facebook.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/coffee_time.png'),
          const SliderDot(),
          const SizedBox(
            height: 20,
          ),
          const Text('Get the best coffee\nin town!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: mPrimaryTextColor,
            fontSize: 32,
            fontWeight: FontWeight.w500
          ),
          ),
          const SizedBox(height: 60,),
          const LoginAndRegister(),
          const LoginWithFacebook(),
        ],
      ),
    );
  }
}
