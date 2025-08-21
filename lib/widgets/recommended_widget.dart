import 'package:flutter/material.dart';
import 'package:zomato_clone/module/home_item_card.dart';

class RecommendedWidget extends StatefulWidget {
  final List<HomeItemCard> bucket;
  const RecommendedWidget(this.bucket, {super.key});

  @override
  State<RecommendedWidget> createState() => _RecommendedWidgetState();
}

class _RecommendedWidgetState extends State<RecommendedWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemCount: widget.bucket.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              print("clicked of ${widget.bucket[index].Restaurant}");
            },
            child: SizedBox(
              width: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height:90,
                        width: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage(widget.bucket[index].img as String),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                            color: Colors.black.withValues(alpha: 0.7),
                          ),
                          child: Text(
                            widget.bucket[index].offer as String,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Stack(
                          children: [
                            Container(
                              height: 22,
                              width: 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(13),
                                  // bottomRight: Radius.circular(3),
                                ),
                                color: Color.fromARGB(255, 24, 23, 28),
                              ),
                            ),
                            Positioned(
                              top: 7,
                              child: Container(
                                padding: EdgeInsets.only(left: 3, right: 3),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(13),
                                  ),
                                  color: Colors.green.shade800,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      widget.bucket[index].rating as String,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(Icons.star, color: Colors.white, size: 10),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    widget.bucket[index].Restaurant as String,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined,color: Colors.grey,size: 15,),
                      Text("${widget.bucket[index].minTime}-${widget.bucket[index].maxTime} mins",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                      ),)
                    ],
                  )


                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
