import 'package:flutter/material.dart';
import 'package:flutter001/ui/car_rental/available_car_screen.dart';
import 'package:flutter001/ui/coffee/coffee.dart';
import 'package:flutter001/ui/medical/startup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const BottomBarPage(title: '底部导航'),
      //home: StartupScreen(),//ui_medical
      //home: const AvailableCarScreen(),//car_rental
      home:const CoffeePage()//coffee
    );
  }
}
