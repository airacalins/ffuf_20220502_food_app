// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/screens/grocery/empty_grocery_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyGroceryScreen();
  }
}