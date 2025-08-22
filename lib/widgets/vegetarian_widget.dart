import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zomato_clone/module/home_item_card.dart';
import 'package:zomato_clone/widgets/restaurant_card_widget.dart';

class VegetarianWidget extends StatelessWidget {
  final List<HomeItemCard> bucket;
  const VegetarianWidget(this.bucket, {super.key});

  @override
  Widget build(BuildContext context) {
    final sortedList = [...bucket]..sort((a, b) => b.rating!.compareTo(a.rating!));
    final top4 = sortedList.take(min(4, sortedList.length)).toList();

    return Column(
      children: [
        Row(
          children: [
            RestaurantCardWidget(top4, 0),
            RestaurantCardWidget(top4, 1),
          ],
        ),
        Row(
          children: [
            RestaurantCardWidget(top4, 2),
            RestaurantCardWidget(top4, 3),
          ],
        ),
      ],
    );
  }
}
