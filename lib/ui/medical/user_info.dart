import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      children: [
        Image.asset('assets/images/avatar.png',width: 100,height: 100,),
        const SizedBox(width: 24,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'dr.John Doe',
              style: TextStyle(
                color: mButtonColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Pulmonologist',style: TextStyle(fontSize: 12),)
          ],
        )
      ],
    ),);
  }
}
