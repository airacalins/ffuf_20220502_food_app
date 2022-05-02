// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Card2 extends StatefulWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  final String avatar = '';
  final String name = 'Lunamarianne Perez';
  final String position = 'Head Chef';
  final String title = 'Recipe';
  final String description = 'Smoothies';
  bool isFavorite = false;

  void handleFavoriteTapped() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(17),
        constraints: BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink, width: 3),
          image: DecorationImage(
            image: AssetImage('images/smoothie.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/chef.jpg'),
            ),
            Positioned(
              child: Text(
                name,
                style: TextStyle(backgroundColor: Colors.pink),
              ),
              left: 50,
            ),
            Positioned(
              child: Text(
                position,
                style: TextStyle(backgroundColor: Colors.pink),
              ),
              top: 15,
              left: 50,
            ),
            Positioned(
              child: GestureDetector(
                onTap: handleFavoriteTapped,
                child: Icon(
                  !!isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                  color: Colors.pink,
                ),
              ),
              top: 10,
              right: 0,
            ),
            Positioned(
              child: RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    description,
                    style:
                        TextStyle(fontSize: 25, backgroundColor: Colors.pink),
                  )),
              bottom: 40,
            ),
            Positioned(
              child: Text(
                title,
                style: TextStyle(fontSize: 25, backgroundColor: Colors.pink),
              ),
              bottom: 20,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }
}
