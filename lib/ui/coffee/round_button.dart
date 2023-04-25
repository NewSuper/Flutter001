import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const RoundButton({Key? key,required this.title,
  required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36)
        ),
        color: mPrimaryColor,
        onPressed: press,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white
            ),
          ),
        ));
  }
}
