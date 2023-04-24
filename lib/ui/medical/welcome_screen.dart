import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';
import 'package:flutter001/ui/medical/header_logo.dart';
import 'package:flutter001/ui/medical/menu_card.dart';
import 'package:flutter001/ui/medical/my_header.dart';
import 'package:flutter001/ui/medical/reserve_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader(
              height: 333,
              imageUrl: 'assets/images/medical_welcome.png',
              child: Column(
                children: const [
                  HeaderLogo(),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 28,
                        color: mTitleTextColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet,\n consectetuer adipiscing elit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 36,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              )),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [mBackgroundColor, mSecondBackgroundColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Our Health\nServices',
                          style: TextStyle(
                            color: mTitleTextColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          color: mSecondBackgroundColor,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuCard(
                          imageUrl: 'assets/images/medical_general_practice.png',
                          title: 'General Practice',
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ReserveScreen();
                                },
                              ),
                            );
                          }),
                      MenuCard(
                        imageUrl: 'assets/images/medical_specialist.png',
                        title: 'Specialist',
                        press: () {},
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MenuCard(
                          imageUrl: 'assets/images/medical_general_practice.png',
                          title: 'General Practice',
                          press: () {}),
                      MenuCard(
                        imageUrl: 'assets/images/medical_specialist.png',
                        title: 'Specialist',
                        press: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
