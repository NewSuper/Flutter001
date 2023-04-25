import 'package:flutter/material.dart';

import 'input_text_field.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          InputTextField(
            label: 'Email',
            onChange: () {},
          ),
          const SizedBox(height: 16,),
          InputTextField(
            label: 'Password',
            password: true,
            onChange: () {},
          ),
        ],
      ),
    );
  }
}