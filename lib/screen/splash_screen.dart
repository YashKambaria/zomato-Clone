import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(230, 240, 55, 69),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("zomato",
            style: TextStyle(
              color: Colors.white,
              fontSize: 47,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),
            ),
            SizedBox(height: 4,),
            Divider(height: 1,thickness: 0.5,indent:120,endIndent: 120,color: Colors.white60,),
            SizedBox(height: 8,),
            Text("AN EXTERNAL COMPANY",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
