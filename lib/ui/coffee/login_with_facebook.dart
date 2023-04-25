import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWithFacebook extends StatelessWidget {
  const LoginWithFacebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: FlatButton(
        shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(36),
          side: BorderSide(color: mFacebookColor)
        ),
        onPressed: (){

        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/coffee_facebook.svg'),
              const SizedBox(width: 12,),
              Text(
                'Connect with Facebook',
                style: TextStyle(color: mFacebookColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
