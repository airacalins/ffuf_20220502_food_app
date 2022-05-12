// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:food_app/providers/providers.dart';
import 'package:food_app/screens/grocery/empty_grocery_screen.dart';
import 'package:provider/provider.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(Icons.add),
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (context, groceryManager, child) {
      if(groceryManager.groceries.isNotEmpty) {
        return Container();
      }
      else {
        return EmptyGroceryScreen();
      }
    },);
  }
}