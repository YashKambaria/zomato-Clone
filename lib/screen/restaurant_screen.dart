import 'package:flutter/material.dart';
import 'package:zomato_clone/module/home_item_card.dart';
import 'package:zomato_clone/widgets/restaurant/top_bar_widget.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    // final restaurant = HomeItemCard(
    //   ['assets/img3.jpeg', 'assets/img1.jpeg', 'assets/img4.jpeg'],
    //   ["50% off", "15% off", "Buy One Get One"],
    //   ["Burger", "Sandwich", "Paneer Chill"],
    //   [200, 210, 310],
    //   [4.1, 4.2, 3.6],
    //   "20",
    //   "25",
    //   "Jay Bhavani",
    // );
    final restaurant=ModalRoute.of(context)!.settings.arguments as HomeItemCard;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 28),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 24, 23, 28),
        actions: [
         
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Hero(
              tag: "image-${restaurant.id}",
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(restaurant.img!.first.toString()),
                      fit: BoxFit.fill
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: TopBarWidget(restaurant: restaurant)),
        ],
      ),
    );
  }
}
