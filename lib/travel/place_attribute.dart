import 'package:flutter/material.dart';
import 'package:test_flutter/travel/place_attribute_item.dart';

class PlaceAttribute extends StatelessWidget {
  const PlaceAttribute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          PlaceAttributeItem(
            iconUrl: 'assets/icons/mark.svg',
            isSelect: true,
          ),
          PlaceAttributeItem(
            iconUrl: 'assets/icons/compass.svg',
          ),
          PlaceAttributeItem(
            iconUrl: 'assets/icons/hotel.svg',
          ),
          PlaceAttributeItem(
            iconUrl: 'assets/icons/travel.svg',
          ),
          PlaceAttributeItem(
            iconUrl: 'assets/icons/share.svg',
          )
        ],
      ),
    );
  }
}
