import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

class InputTextField extends StatelessWidget {

  final String label;
  final VoidCallback onChange;
  final bool password;

  const InputTextField({
    Key? key,
    required this.label,
    required this.onChange,
    this.password = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      cursorColor: Colors.grey,
      // onChanged: onChange,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
          color: mPrimaryColor,
          width: 2,
        )),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: mPrimaryColor,
          width: 2,
        )),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.grey,
          width: 0.5,
        )),
      ),
    );
  }
}
