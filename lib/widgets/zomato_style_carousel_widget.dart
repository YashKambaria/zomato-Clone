import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone/module/home_item_card.dart';

class ZomatoStyleCarouselWidget extends StatelessWidget {
  final HomeItemCard item;
  const ZomatoStyleCarouselWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 42, 41, 46),
      ),
      child:  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 42, 41, 46),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
            CarouselSlider(
              options: CarouselOptions(
                autoPlayInterval: Duration(seconds: 4),
                viewportFraction: 1,
                autoPlay: true,
                height: 200,
              ),
              items:
              item.img?.map((img) {
                return ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        img,
                        height: 193,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      if (item.offer != null)
                        Positioned(
                          bottom: 15,
                          child: Container(
                            margin: const EdgeInsets.only(top: 4),
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                            decoration: BoxDecoration(
                              color: Colors.black.withAlpha(150),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Text(
                               item.offer?.first as String,
                              style: const TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              }).toList(),
            ),

                // Content section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "${item.restaurant}",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green.shade800,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  item.rating!.first.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 2),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // const SizedBox(height: 6),

                      // Delivery time row
                      Row(
                        children: [
                          const Icon(
                            Icons.timer_outlined,
                            color: Colors.grey,
                            size: 14,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "${item.minTime}-${item.maxTime} mins",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

    );
  }
}
