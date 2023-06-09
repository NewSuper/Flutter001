import 'package:flutter/material.dart';

import '../constants.dart';

class PlaceButton extends StatelessWidget {
  const PlaceButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
      child: FlatButton(
        color: mPrimaryColor5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: const Text(
            'Book Now',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
