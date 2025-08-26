import 'package:flutter/material.dart';
import 'package:zomato_clone/module/home_item_card.dart';

class TopBarWidget extends StatelessWidget {
  final HomeItemCard restaurant;
  const TopBarWidget({required this.restaurant, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${restaurant.restaurant}",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 6, right: 3),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: Colors.green.shade800,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      restaurant.rating!.first.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.stars, color: Colors.white, size: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined, color: Colors.white),
              Text("2.5 km Gota", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.cloud_outlined, color: Colors.white, size: 20),
              SizedBox(width: 5),
              Text(
                "${restaurant.minTime}-${restaurant.maxTime} mins",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey,height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
          child: Row(
            children: [
              Icon(Icons.percent_rounded, color: Colors.blue),
              SizedBox(width: 3),
              Text("${restaurant.offer?.first}",style: TextStyle(
                color: Colors.white
              ),),
            ],
          ),
        ),
      ],
    );
  }
}
