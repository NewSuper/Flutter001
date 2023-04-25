import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

class CoffeePage extends StatefulWidget {
  const CoffeePage({Key? key}) : super(key: key);

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  @override
  void initState() {
    var d = const Duration(seconds: 3);
    Future.delayed(d,(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return const HomeScreen();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffee_bg.png')
          )
        ),
        child: Center(
          child: SvgPicture.asset('assets/images/coffee_logo.svg'),
        ),
      ),
    );
  }
}

