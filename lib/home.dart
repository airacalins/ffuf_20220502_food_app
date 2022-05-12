// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/providers/bottom_tab_manager.dart';
import 'package:food_app/screens/explore/explore_screen.dart';
import 'package:food_app/screens/grocery/grocery_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  static List screens = [
    ExploreScreen(),
    Container(color: Colors.green),
    GroceryScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Consumer<BottomTabManager> (
      builder: (context, bottomTabManager, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'FoodApp'
            ),
          ),
          body: screens[bottomTabManager.selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomTabManager.selectedTab,
            onTap: (index) => bottomTabManager.showScreen(index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Card 1'),
              BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Card 2'),
              BottomNavigationBarItem(icon: Icon(Icons.local_grocery_store), label: 'Grocery'),
            ],
          ),
        );
      }
    );
  }
}
