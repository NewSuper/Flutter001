import 'package:flutter/material.dart';
import 'package:flutter001/ui/medical/header_logo.dart';
import 'package:flutter001/ui/medical/welcome_screen.dart';
import 'package:flutter001/constant.dart';
import 'my_header.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const MyHeader(
            height: 535,
            imageUrl: 'assets/images/medical_doctor.png',
            child: HeaderLogo(),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [mBackgroundColor, mSecondBackgroundColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: <Widget>[
                   const Text(
                    'Booking Apps',
                    style: TextStyle(
                        fontSize: 32,
                        color: mTitleTextColor,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetuer \n'
                        'adipiscing elit, sed diam nonummy nibh euismod ',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: mTitleTextColor),
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(36),
                    child: FlatButton(
                      color: mButtonColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const WelcomeScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Book Now',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
