import 'package:flutter/material.dart';
import 'package:zomato_clone/module/explore_more_card.dart';

class ExploreMoreWidget extends StatelessWidget {
  const ExploreMoreWidget({super.key});
  @override
  Widget build(BuildContext context) {
    List<ExploreMoreItem> list = [
      ExploreMoreItem("assets/offers.png", "Offers"),
      ExploreMoreItem("assets/gourmet.png", "Gourmet"),
      ExploreMoreItem("assets/healthy.png", "Healthy"),
      ExploreMoreItem("assets/train.png", "Food on Train"),
      ExploreMoreItem("assets/party.png", "Plan a party"),
      ExploreMoreItem("assets/collection.png", "Collections"),
      ExploreMoreItem("assets/giftcard.png", "Gift cards"),
    ];
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => SizedBox(width: 10),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 90,
            decoration: BoxDecoration(
              color: Color.fromARGB(255,33,31,42),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255,33,31,42),
                    image: DecorationImage(
                      image: AssetImage(list[index].img as String),
                      fit: BoxFit.fill,
                    ),
                  ),

                ),
                SizedBox(height: 8,),
                Expanded(
                  child: Text(
                    list[index].name as String,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
