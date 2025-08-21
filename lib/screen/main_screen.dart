import 'package:flutter/material.dart';
import 'package:zomato_clone/screen/home.dart';
import 'package:zomato_clone/screen/splashScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex=0;
  final List<Widget> _screens=[
    Home(),
    Splashscreen(),
    Splashscreen(),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        backgroundColor: Color.fromARGB(245,24,23,28),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
          items: const[
             const BottomNavigationBarItem(icon: Icon(Icons.delivery_dining_outlined),label: "Delivery",),
             const BottomNavigationBarItem(icon: Icon(Icons.dinner_dining_outlined),label: "Dining"),
             const BottomNavigationBarItem(icon: Icon(Icons.rocket_launch),label: 'District',),

          ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
