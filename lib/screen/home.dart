import 'package:flutter/material.dart';
import 'package:zomato_clone/widgets/categoryScroller.dart';
import 'package:zomato_clone/widgets/filter_widget.dart';
import 'package:zomato_clone/widgets/recommended_widget.dart';
import 'package:zomato_clone/widgets/search_bar_widget.dart';
import 'package:zomato_clone/widgets/toggle_mode_widget.dart';
import 'package:zomato_clone/widgets/zomato_gold_widget.dart';
import '../module/home_item_card.dart';
import '../widgets/top_app_bar_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeItemCard> bucket1 = [
    HomeItemCard(
      'assets/Faasos.png',
      "FLAT 50% off",
      "Cake",
      "4.5",
      "20",
      "25",
      "Faasos - Wraps and rolls",
    ),
    HomeItemCard(
      'assets/Noodles.avif',
      "50% off",
      "Faasos - Wraps and rolls ",
      "4.5",
      "20",
      "25",
      "Chinese King",
    ),
    HomeItemCard(
      'assets/Cake.avif',
      "50% off",
      "Cake",
      "4.5",
      "20",
      "25",
      "Faasos - Wraps and rolls",
    ),
    HomeItemCard(
      'assets/Cake.avif',
      "50% off",
      "Cake",
      "4.5",
      "20",
      "25",
      "Faasos - Wraps and rolls",
    ),
    HomeItemCard(
      'assets/Cake.avif',
      "50% off",
      "Cake",
      "4.5",
      "20",
      "25",
      "Monginis",
    ),
    HomeItemCard(
      'assets/Cake.avif',
      "50% off",
      "Cake",
      "4.5",
      "20",
      "25",
      "Faasos - Wraps and rolls",
    ),
    HomeItemCard(
      'assets/Cake.avif',
      "50% off",
      "Cake",
      "4.5",
      "20",
      "25",
      "Faasos - Wraps and rolls",
    ),
    HomeItemCard(
      'assets/Cake.avif',
      "50% off",
      "Cake",
      "4.5",
      "20",
      "25",
      "Faasos - Wraps and rolls",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 28),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: TopAppBarWidget()),
            SliverAppBar(
              pinned: true,
              backgroundColor: Color.fromARGB(255, 24, 23, 28),
              elevation: 0,
              automaticallyImplyLeading: false,
              toolbarHeight: 70,
              flexibleSpace: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [SearchBarWidget(), ToggleModeWidget()],
                ),
              ),
            ),
            SliverToBoxAdapter(child: ZomatoGoldWidget()),
            SliverAppBar(
                pinned: true,
                backgroundColor: Color.fromARGB(255, 24, 23, 28),
                elevation: 0,
                automaticallyImplyLeading: false,
                toolbarHeight: 100,
                flexibleSpace: Categoryscroller()
            ),
            SliverToBoxAdapter(child: FilterWidget()),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "RECOMMENDED FOR YOU",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SliverToBoxAdapter(child: RecommendedWidget(bucket1)),
            SliverToBoxAdapter(child: RecommendedWidget(bucket1)),
            SliverToBoxAdapter(child: RecommendedWidget(bucket1)),
            SliverToBoxAdapter(child: RecommendedWidget(bucket1)),
            SliverToBoxAdapter(child: RecommendedWidget(bucket1)),
            SliverToBoxAdapter(child: RecommendedWidget(bucket1)),
          ],
        ),
      ),
    );
  }
}

