import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Categoryscroller extends StatefulWidget {
  const Categoryscroller({super.key});

  @override
  State<Categoryscroller> createState() => _CategoryscrollerState();
}

class _CategoryscrollerState extends State<Categoryscroller> {
  int selectedIndex=0;
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
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemCount: categories.length,
        itemBuilder: (context, index) {
            final category=categories[index];
            final isSelected=index==selectedIndex;
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex=index;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 60,
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
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey,
                        fontSize: 14,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                  AnimatedContainer(duration:const Duration(
                    milliseconds: 250
                  ),
                    height: 3,
                    width: isSelected?50:0,
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green
                    ),
                  ),
                ],
              ),
            );
        },
      ),
    );
  }
}
