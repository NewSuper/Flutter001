import 'package:flutter/material.dart';
import 'package:flutter001/ui/car_rental/car_information.dart';
import 'package:flutter001/ui/car_rental/cart.dart';

import '../../constant.dart';
import 'car_detail_screen.dart';

class CarListItem extends StatelessWidget {
  final int index;

  const CarListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Car car = carList[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CarDetailScreen(
            car: car,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Stack(
          children: [
            CarInfomation(car: car),
            Positioned(
                right: 40,
                child: Image.asset(
                  car.image,
                  height: 100,
                ))
          ],
        ),
      ),
    );
  }
}
