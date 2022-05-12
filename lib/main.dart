// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/home.dart';
import 'package:food_app/models/bottom_tab_manager.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Colors.blueGrey.shade900,
        onPrimary: Colors.blueGrey,
        secondary: Colors.amber.shade700,
        onSecondary: Colors.amber.shade100,
        error: Colors.red,
        onError: Colors.red.shade100,
        background: Colors.blueGrey.shade900,
        onBackground: Colors.blueGrey.shade800,
        surface: Colors.blueGrey.shade900,
        onSurface: Colors.blueGrey,
        ),
        primaryColor: Colors.blueGrey.shade900,
        backgroundColor: Colors.blueGrey.shade900,
        textTheme: TextTheme(
          titleMedium: TextStyle(fontSize: 30)
        )
      ),
      title: 'FoodApp',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => BottomTabManager(),
          )
        ],
        child: const Home(),
     ),
    );
  }
}
