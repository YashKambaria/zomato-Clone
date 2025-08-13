import 'package:flutter/material.dart';


class ZomatoGoldWidget extends StatelessWidget {
  const ZomatoGoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("open pop up for gold");
      },
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
        ),
        child:Image.asset("assets/gold.png"),
      ),
    );
  }
}
