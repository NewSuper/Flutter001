import 'package:flutter/material.dart';
import 'package:test_flutter/book/free_tag.dart';
import 'package:test_flutter/constants.dart';

class FeaturedItem extends StatelessWidget {
  final ListeningBook item;

  const FeaturedItem({Key? key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 120,
                height: 176,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(item.imageUrl), fit: BoxFit.cover)),
              ),
              Positioned(
                  right: 12,
                  top: 12,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(color: mAccentColor2),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Colors.white,
                        ),
                        Text(
                          '${item.rating}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            item.title,
            style: TextStyle(fontSize: 16, color: mTitleTextColor2),
          ),
          const SizedBox(
            height: 16,
          ),
          item.newPrice == 0.0
              ? FreeTag()
              : item.price == 0.0
                  ? Text(
                      '\$${item.newPrice}',
                      style: TextStyle(
                        color: mTitleTextColor,
                        fontSize: 12,
                      ),
                    )
                  : Row(
                      children: [
                        Text(
                          '\$${item.newPrice}',
                          style: TextStyle(
                            color: mTitleTextColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '\$${item.price}',
                          style: TextStyle(
                            color: mSubTextColor2,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    )
        ],
      ),
    );
  }
}
