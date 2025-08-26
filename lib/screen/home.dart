import 'package:flutter/material.dart';
import 'package:zomato_clone/widgets/category_scroller.dart';
import 'package:zomato_clone/widgets/explore_more_widget.dart';
import 'package:zomato_clone/widgets/filter_widget.dart';
import 'package:zomato_clone/widgets/recommended_widget.dart';
import 'package:zomato_clone/widgets/search_bar_widget.dart';
import 'package:zomato_clone/widgets/toggle_mode_widget.dart';
import 'package:zomato_clone/widgets/vegetarian_widget.dart';
import 'package:zomato_clone/widgets/zomato_gold_widget.dart';
import 'package:zomato_clone/widgets/zomato_style_carousel_widget.dart';
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
      1,
      ['assets/Faasos.png','assets/img6.jpeg'],
      ["FLAT 50% off","Buy 1 Get 1"],
      ["Wrap","Cheezy 7"],
      [200,500],
      [4.7,4.6],
      "30",
      "35",
      "Lapin oz",
    ),
    HomeItemCard(
      2,
      ['assets/Noodles.avif','assets/img2.jpeg'],
      ["50% off"],
      ["Wraps","rolls"],
      [200,250],
      [4.5,4.3],
      "40",
      "45",
      "Faasos - Wraps and rolls",
    ),
    HomeItemCard(
      3,
      ['assets/Cake.avif'],
      ["50% off"],
      ["Cake"],
      [200],
      [4.5],
      "20",
      "25",
      "Monginis",
    ),
    HomeItemCard(
      4,
      ['assets/img1.jpeg','assets/img5.jpeg'],
      ["50% off","20% off"],
      ["Sandwich","French-Fries"],
      [200,167],
      [4.5,4.2],
      "20",
      "25",
      "Manekchowk",
    ),
    HomeItemCard(
      5,
      ['assets/img2.jpeg','assets/img7.jpeg'],
      ["50% off","20% off"],
      ["Burger","Platter"],
      [200,230],
      [4.5,4.7],
      "20",
      "25",
      "MC Donald",
    ),
    HomeItemCard(
      6,
      ['assets/img3.jpeg','assets/img1.jpeg','assets/img4.jpeg'],
      ["50% off","15% off","Buy One Get One"],
      ["Burger","Sandwich","Paneer Chill"],
      [200,210,310],
      [4.1,4.2,3.6],
      "20",
      "25",
      "Jay Bhavani",
    ),
    HomeItemCard(
      7,
      ['assets/img4.jpeg'],
      ["30% off"],
      ["Panner Chilly"],
      [200],
      [4.4],
      "20",
      "25",
      "Marutinandan Restaurant",
    ),
    HomeItemCard(
      8,
      ['assets/img5.jpeg'],
      ["40% off"],
      ["French Fries"],
      [150],
      [4.2],
      "20",
      "25",
      "Burger King",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    bucket1.shuffle();
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
              flexibleSpace: Categoryscroller(),
            ),
            SliverToBoxAdapter(child: FilterWidget()),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "RECOMMENDED FOR YOU",
                  style: TextStyle(color: Colors.grey, letterSpacing: 2),
                ),
              ),
            ),
            SliverToBoxAdapter(child: RecommendedWidget(bucket1)),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                child: Text(
                  "EXPLORE MORE",
                  style: TextStyle(color: Colors.grey, letterSpacing: 2),
                ),
              ),
            ),
            SliverToBoxAdapter(child: ExploreMoreWidget()),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "TOP VEGETARIAN CHOICES",
                      style: TextStyle(color: Colors.grey, letterSpacing: 2),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("see all");
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: VegetarianWidget(bucket1)),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            SliverList.separated(
              itemCount: bucket1.length,
              itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: ZomatoStyleCarouselWidget(bucket1[index]),
              );
            },
              separatorBuilder: (_, __) => const SizedBox(height: 1),

              // CarouselSlider(
              //   options: CarouselOptions(
              //     viewportFraction: 1,
              //     autoPlay: true,
              //     height: 200,
              //   ),
              //   items:
              //   item.img?.map((img) {
              //     return ClipRRect(
              //       borderRadius: BorderRadius.vertical(
              //         top: Radius.circular(10),
              //       ),
              //       child: Image.asset(img, fit: BoxFit.cover),
              //     );
              //   }).toList(),
              // ),

            ),
          ],
        ),
      ),
    );
  }
}
