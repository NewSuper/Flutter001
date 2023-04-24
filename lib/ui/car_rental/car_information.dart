import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';
import 'package:flutter001/ui/car_rental/cart.dart';
import 'attribute.dart';

class CarInfomation extends StatelessWidget {
  final Car car;

  const CarInfomation({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: mCardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$${car.price}',
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const Text(
            'price/hr',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Attribute(value: car.brand, name: 'Brand'),
              Attribute(
                value: car.model,
                name: 'Model No',
              ),
              Attribute(
                value: car.co2,
                name: 'CO2',
              ),
              Attribute(
                value: car.fuelCons,
                name: 'Fule Cons.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
