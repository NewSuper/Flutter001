import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter001/ui/coffee/welcome_back.dart';

import '../../constant.dart';
import 'login_button.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const WelcomeBack(),
          const LoginForm(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password?',
              style: TextStyle(color: mPrimaryColor),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const LoginButton(),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 16,
            ),
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(style: const TextStyle(color: Colors.grey), children: [
                const TextSpan(text: 'Don\'t have an account? '),
                TextSpan(
                  text: 'Register',
                  style: TextStyle(
                    color: mPrimaryColor,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    Navigator.pop(context);
                  },
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Login',
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
