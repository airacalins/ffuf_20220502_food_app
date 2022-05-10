// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/models/models.dart';

class Card3 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card3({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final String title = 'Cappuccino';
  final String description = 'With Oat Milk';
  final double ratings = 4.5;
  final int numberOfRates = 445;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
          child: Container(
        padding: const EdgeInsets.all(17),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/coffee.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(description),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(children: [
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Container(
                      child: Text(
                        ratings.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    Text(numberOfRates.toString())
                  ]),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
