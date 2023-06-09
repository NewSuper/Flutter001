import 'package:flutter/material.dart';
import 'package:test_flutter/travel/place_about.dart';
import 'package:test_flutter/travel/place_andname.dart';
import 'package:test_flutter/travel/place_attribute.dart';
import 'package:test_flutter/travel/place_button.dart';
import 'package:test_flutter/travel/place_header.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlaceHeader(),
            PlaceAndName(),
            const SizedBox(
              height: 36,
            ),
            PlaceAbout(),
            PlaceAttribute(),
            PlaceButton(),
          ],
        ),
      ),
    );
  }
}
