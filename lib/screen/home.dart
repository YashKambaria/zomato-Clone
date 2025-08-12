import 'package:flutter/material.dart';

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
        children: [
          TopAppBarWidget(),
        ],
      ),
    );
  }
}
