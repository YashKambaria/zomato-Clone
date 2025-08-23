import 'package:flutter/material.dart';

class TopAppBarWidget extends StatefulWidget {
  const TopAppBarWidget({super.key});

  @override
  State<TopAppBarWidget> createState() => _TopAppBarWidgetState();
}

class _TopAppBarWidgetState extends State<TopAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 24, 23, 28),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.green.shade800, size: 25),
                  GestureDetector(
                    onTap: () {
                      print("Location");
                    },
                    child: Row(
                      children: [
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 2),
                        Icon(Icons.keyboard_arrow_down, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "building 1,9th floor,908, Manmandir host...",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              print("wallet");
            },
            child: Container(
              padding: EdgeInsets.all(0.4),
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey.shade900,
                child: Icon(Icons.wallet, color: Colors.white, size: 20),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Profile");
            },
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 219, 196, 155),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Color.fromARGB(255, 246, 228, 190),
                child: Text(
                  "Y",
                  style: TextStyle(
                    color: Color.fromARGB(255, 171, 133, 68),
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
