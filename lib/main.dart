import 'package:flutter/material.dart';
import 'package:food_app/home.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'FoodApp',
      home: const Home(),
    );
  }
}
