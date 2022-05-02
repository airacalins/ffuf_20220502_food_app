// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String category = 'Baker\' choice!';
  final String title = 'The Art of Dough!';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Lunamarianne';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(children: [
          Positioned(
            child: Text(category),
          ),
          Positioned(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            top: 20,
          ),
          Positioned(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 12,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.black38,
              ),
            ),
            bottom: 30,
            right: 0,
          ),
          Positioned(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            bottom: 30,
            right: 0,
          ),
          Positioned(
            child: Text(
              chef,
              style: TextStyle(
                fontSize: 12,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.black38,
              ),
            ),
            bottom: 10,
            right: 0,
          ),
          Positioned(
            child: Text(
              chef,
              style: TextStyle(fontSize: 12),
            ),
            bottom: 10,
            right: 0,
          ),
        ]),
        padding: const EdgeInsets.all(17),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            image: DecorationImage(
              image: AssetImage('images/image1.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
      ),
    );
  }
}
