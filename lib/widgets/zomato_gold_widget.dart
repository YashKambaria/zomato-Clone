import 'package:flutter/material.dart';

class ZomatoGoldWidget extends StatelessWidget {
  const ZomatoGoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => buildSheet(context),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(),
        child: Image.asset("assets/gold.png"),
      ),
    );
  }

  Widget buildSheet(context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 24, 23, 28)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/GoldIMG.png"),
          Container(
            width: MediaQuery.sizeOf(context).width*0.93,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Thank You",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255,15,129,69),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
