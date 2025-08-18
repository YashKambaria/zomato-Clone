import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Categoryscroller extends StatefulWidget {
  const Categoryscroller({super.key});

  @override
  State<Categoryscroller> createState() => _CategoryscrollerState();
}

class _CategoryscrollerState extends State<Categoryscroller> {
  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        'image': 'assets/Burger.avif',
        'label': 'Burger',
      },
      {
        'image': 'assets/Cake.avif',
        'label': 'Cake',
      },
      {
        'image': 'assets/Noodles.avif',
        'label': 'Noodles',
      },
      {
        'image': 'assets/veg_meal.avif',
        'label': 'Veg Meal',
      },
      {
        'image': 'assets/Thali.avif',
        'label': 'Thali',
      },
      {
        'image': 'assets/Rolls.avif',
        'label': 'Rolls',
      },
      {
        'image': 'assets/Sandwich.avif',
        'label': 'Sandwich',
      },
      {
        'image': 'assets/North_Indian.avif',
        'label': 'North Indian',
      },
    ];
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemCount: categories.length,
        itemBuilder: (context, index) {
            final category=categories[index];
            return Column(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(category['image'] as String),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  category['label'] as String,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                )
              ],
            );
        },
      ),
    );
  }
}
