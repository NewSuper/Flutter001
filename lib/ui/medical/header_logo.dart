import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/medical_logo.png',
              width: 36,height: 36,),
            const SizedBox(width: 12,),
            const Text('medical',style: TextStyle(
              fontSize: 38,
                color:mTitleTextColor,
                fontWeight: FontWeight.bold
            ),)
          ],
    )
    );
  }
}
