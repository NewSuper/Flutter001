import 'package:flutter/material.dart';
import 'package:flutter001/constant.dart';
import 'package:flutter001/ui/car_rental/cart.dart';
import 'package:flutter001/ui/car_rental/rating_bar.dart';

import 'attribute.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  const CarDetailScreen({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          color: mPrimaryColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          CarInfo(car: car),
          const Divider(
            height: 16,
            color: Colors.black54,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/car_av.png',
                height: 120,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Column(
                children: const [
                  DriverInfo(),
                  SizedBox(
                    height: 12,
                  ),
                  DiverAppraise(),
                  SizedBox(
                    height: 12,
                  ),
                  DriverCall()
                ],
              )),
            ],
          )
        ],
      ),
    );
  }
}

class DriverCall extends StatelessWidget {
  const DriverCall({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
          onPressed: () {},
          color: mCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          child: const Text(
            'Call',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: mCardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
          child: const Text(
            'Book Now',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class DiverAppraise extends StatelessWidget {
  const DiverAppraise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          '5.0',
          style: TextStyle(),
        ),
        const SizedBox(
          width: 6,
        ),
        RatingBar(
          onRatingUpdate: (value) {},
          size: 14,
          selectColor: Colors.white,
        ),
      ],
    );
  }
}

class DriverInfo extends StatelessWidget {
  const DriverInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Jesica Smith',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'License NWR 369852',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              '369',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Ride',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\$${car.price}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
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
            Attribute(
              value: car.brand,
              name: 'Brand',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.model,
              name: 'Model No',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.co2,
              name: 'CO2',
              textColor: Colors.black87,
            ),
            Attribute(
              value: car.fuelCons,
              name: 'Fule Cons.',
              textColor: Colors.black87,
            ),
          ],
        )
      ],
    );
  }
}
