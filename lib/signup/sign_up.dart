import 'package:flutter/material.dart';

import '../constants.dart';
import '../widget/have_account.dart';
import '../widget/rounded_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Let\'s do some Adventure',
              style: TextStyle(
                color: mPrimaryTextColor3,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Create an account to get started',
            ),
            const SizedBox(
              height: 36,
            ),
            RoundedInput(
              onChange: (value) {},
              hintText: 'Name',
            ),
            const SizedBox(
              height: 16,
            ),
            RoundedInput(
              onChange: (value) {},
              hintText: 'Emial id',
            ),
            const SizedBox(
              height: 16,
            ),
            RoundedInput(
                onChange: (value) {}, hintText: 'Password', suffixText: 'SHOW'),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                Checkbox(value: false, onChanged: (value) {}),
                const Text('I accept the Terms of Use')
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            RoundedButton(
              press: () {},
              backgroundColor: mPrimaryColor3,
              text: 'Sign up',
              textColor: Colors.black,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
              child: const Text(
                'By continuing, you agree to accept our Privacy Policy & Terms of Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const HaveAccount(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor3,
      elevation: 0,
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: Text(
        'Adventure',
        style: TextStyle(
          color: mPrimaryTextColor3,
          fontFamily: 'WildRide',
          fontSize: 40,
        ),
      ),
    );
  }
}

class RoundedInput extends StatelessWidget {
  const RoundedInput({
    Key? key,
    required this.hintText,
    required this.onChange,
    this.suffixText = '',
  }) : super(key: key);

  final String hintText;
  final Function onChange;
  final String suffixText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      //onChanged: onChange(),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
        hintText: hintText,
        hintStyle: TextStyle(color: mPrimaryTextColor3),
        suffixText: suffixText,
        suffixStyle: TextStyle(
          color: mPrimaryColor3,
          fontSize: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: BorderSide(
            color: mBorderColor3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: BorderSide(
            color: mBorderColor3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: BorderSide(
            color: mBorderColor3,
          ),
        ),
      ),
    );
  }
}
