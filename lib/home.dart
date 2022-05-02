// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/card1.dart';
import 'package:food_app/card2.dart';
import 'package:food_app/card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List pages = [
    Card1(),
    Card2(),
    Card3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodApp'),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Card 1'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Card 2'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Card 3'),
        ],
      ),
    );
  }
}
