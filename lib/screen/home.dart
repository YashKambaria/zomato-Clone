import 'package:flutter/material.dart';
import 'package:zomato_clone/widgets/search_bar_widget.dart';
import 'package:zomato_clone/widgets/toggle_mode_widget.dart';
import 'package:zomato_clone/widgets/zomato_gold_widget.dart';

import '../widgets/top_app_bar_widget.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,24,23,28),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TopAppBarWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SearchBarWidget(),
              ToggleModeWidget(),
            ],
          ),
          ZomatoGoldWidget(),


        ],
      ),
    );
  }
}
