import 'package:flutter/material.dart';
import 'package:test_flutter/constants.dart';
import 'package:test_flutter/travel/place_detail.dart';

class PlaceItem extends StatelessWidget {
  final int index;

  const PlaceItem(
    this.index, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const PlaceDetail();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.bottomLeft,
        height: placeList5[index].height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                placeList5[index].imageUrl,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                placeList5[index].title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                placeList5[index].subtitle,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
